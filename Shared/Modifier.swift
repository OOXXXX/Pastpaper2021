//
//  WebViewModifier.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/3.
//

import Foundation
import WebKit
import SwiftUI
import SafariServices

var activityIndicator: UIActivityIndicatorView!


struct Webview: UIViewControllerRepresentable {
    var preferredFrameRateRange = CAFrameRateRange(minimum:120, maximum:120, preferred:120)
    let url: String
    

    func makeUIViewController(context: Context) -> WebviewController {
        let webviewController = WebviewController()
        

        
        let request = URLRequest(url: URL(string: self.url)!, cachePolicy: .returnCacheDataElseLoad)
        webviewController.webview.load(request)

        return webviewController
    }

    func updateUIViewController(_ webviewController: WebviewController, context: Context) {
        let request = URLRequest(url: URL(string: self.url)!, cachePolicy: .returnCacheDataElseLoad)
        webviewController.webview.load(request)
        
    }
}

class WebviewController: UIViewController {
    
    lazy var webview: WKWebView = WKWebView()
    lazy var progressbar: UIProgressView = UIProgressView()
    var preferredFrameRateRange = CAFrameRateRange(minimum:120, maximum:120, preferred:120)

    override func viewDidLoad() {
        super.viewDidLoad()

        self.webview.frame = self.view.frame
        self.webview.translatesAutoresizingMaskIntoConstraints = false
        self.webview.allowsBackForwardNavigationGestures = true
        self.view.addSubview(self.webview)

        self.view.addSubview(self.progressbar)
        self.progressbar.translatesAutoresizingMaskIntoConstraints = false
        self.view.addConstraints([
        self.progressbar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
        self.progressbar.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
        self.progressbar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
        self.webview.topAnchor.constraint(equalTo: self.view.topAnchor),
        self.webview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
        self.webview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
        self.webview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            
        ])
        
//        NSLayoutConstraint.activate([
//            progressbar.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
//        ])

        self.progressbar.progress = 0.1
        webview.addObserver(self, forKeyPath: "estimatedProgress", options: .new, context: nil)
    }

    // MARK: - Web view progress
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        switch keyPath {
        case "estimatedProgress":
            if self.webview.estimatedProgress >= 1.0 {
                UIView.animate(withDuration: 0.3, animations: { () in
                    self.progressbar.alpha = 0.0
                }, completion: { finished in
                    self.progressbar.setProgress(0.0, animated: false)
                })
            } else {
                self.progressbar.isHidden = false
                self.progressbar.alpha = 1.0
                progressbar.setProgress(Float(self.webview.estimatedProgress), animated: true)
            }
        default:
            super.observeValue(forKeyPath: keyPath, of: object, change: change, context: context)
        }
    }
}

class RemoteURLActivityItemProvider : UIActivityItemProvider {
    let remoteURL: URL
    private var urlSession: URLSession
    private var fileManager: FileManager
    private var semaphore: DispatchSemaphore?

    init(url: URL, urlSession: URLSession = .shared, fileManager: FileManager = .default) {
        self.remoteURL = url
        self.urlSession = urlSession
        self.fileManager = fileManager
        super.init(placeholderItem: url)
    }

    override var item: Any {
        guard let filename = remoteURL.pathComponents.last else { return super.item }
        
        // ✅ Return existing data from the user's temp directory, if previously saved:
        let itemURL = fileManager.temporaryDirectory.appendingPathComponent(filename)
        if fileManager.fileExists(atPath: itemURL.path) {
            return try! Data(contentsOf: itemURL)
        }
        
        // ✅ Use a semaphore to make the async data task blocking task:
        var localData: Data?
        semaphore = DispatchSemaphore(value: 0)
        let task = urlSession.dataTask(with: remoteURL) { [weak weakSelf = self] data, response, error in
            defer { weakSelf?.semaphore?.signal() }
            guard let strongSelf = weakSelf, let remoteData = data else { return }

            // ✅ Create (or overwrite) the data to the user's temp directory:
            strongSelf.fileManager.createFile(atPath: itemURL.path, contents: remoteData, attributes: nil)
            localData = try! Data(contentsOf: itemURL)
        }

        task.resume()
        semaphore?.wait()
        semaphore = nil

        // ✅ Return the stored data from the user's temp directory:
        if let item = localData {
            return item
        }

        task.cancel()
        return super.item
    }

    override func cancel() {
        semaphore?.signal()
        super.cancel()
    }
}

struct ActivityView: UIViewControllerRepresentable {
    typealias CompletionWithItemsHandler = (_ activityType: UIActivity.ActivityType?, _ completed: Bool, _ returnedItems: [Any]?, _ error: Error?) -> Void
    
    var activityItems: [Any]
    var applicationActivities: [UIActivity]?
    let excludedActivityTypes: [UIActivity.ActivityType]? = nil
    let completion: CompletionWithItemsHandler? = nil
    
    func makeUIViewController(context: Context) -> UIActivityViewController {
        let controller = UIActivityViewController(activityItems: activityItems, applicationActivities: applicationActivities)
        controller.excludedActivityTypes = excludedActivityTypes
        controller.completionWithItemsHandler = completion
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIActivityViewController, context: Context) {
        // no-op
    }
}

struct SFSafariViewWrapper: UIViewControllerRepresentable {
    let url: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<Self>) -> SFSafariViewController {
        return SFSafariViewController(url: url)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SFSafariViewWrapper>) {
        return
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
