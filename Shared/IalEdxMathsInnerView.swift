//
//  IalEdxMathsInnerView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/2.
//

import SwiftUI
import WebKit

struct IalEdxMathsInnerView: View {
    var body: some View {
        List {
            
            Section(header: Text("Pure Maths")) {
                
                NavigationLink(destination: IalEdxMathsInnerWebView()) {
                    Text("WMA11/01")
                }
                
            }
            .headerProminence(.increased)
        
        }
        //.listStyle(.sidebar)
        .listStyle(.plain)
        .navigationBarTitle("2019", displayMode: .inline)
    }
}

struct IalEdxMathsInnerWebView: View {
    var body: some View {
        Webview(url: "https://cdn.savemyexams.co.uk/wp-content/uploads/2020/12/WMA11_01_que_20190109.pdf")
            .edgesIgnoringSafeArea(.all)
    }
        
}

var activityIndicator: UIActivityIndicatorView!

struct Webview: UIViewControllerRepresentable {
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


struct IalEdxMathsInnerView_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsInnerView()
    }
}
