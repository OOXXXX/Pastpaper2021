//
//  IalEdxMathsInnerView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/2.
//

import SwiftUI
import WebKit

struct IalEdxMaths2019JanView: View {
    @State private var searchText = ""
    var body: some View {
        List {
            Section(header: Text("Question Paper")) {
                ForEach(IalMaths2019JanData)  { ialMaths2019Jan in
                    NavigationLink(destination: IalEdxMaths2019JanWebView(ialMaths2019Jan: ialMaths2019Jan)) {
                            Text(ialMaths2019Jan.name)
                    }
                }
            }
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarTrailing){
                Menu("Select") {
                    Button("Question Paper", action: placeOrder)
                    Button("Mark Scheme", action: placeOrder)
                }
            }
        }
        //.searchable(text: $searchText)
        .listStyle(.plain)
        .navigationBarTitle("PastPaper", displayMode: .inline)
    }
    func placeOrder() { }
    func adjustOrder() { }
}

struct IalEdxMaths2019JanWebView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2019Jan: IalMaths2019Jan
    
    var body: some View {
        Webview(url: ialMaths2019Jan.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2019Jan.name, displayMode: .inline)
            .navigationBarItems(trailing: shareButton)
            .sheet(isPresented: $isActivitySheetPresented, content: activityView)
           
    }
    private var shareButton: some View {
        Button(action: {
            switch (self.horizontalSizeClass, self.verticalSizeClass) {
            case (.regular, .regular):
                self.isActivityPopoverPresented.toggle()
            default:
                self.isActivitySheetPresented.toggle()
            }
        }, label: {
            Image(systemName: "square.and.arrow.up")
                .font(.system(size: 17))
                .frame(width: 30, height: 30)
                .popover(isPresented: $isActivityPopoverPresented, attachmentAnchor: .point(.bottom), arrowEdge: .bottom) {
                    activityView()
                }
        })
    }
    
    private func activityView() -> some View {
        let url = URL(string: ialMaths2019Jan.url)!
        let filename = url.pathComponents.last!
        let fileManager = FileManager.default
        let itemURL = fileManager.temporaryDirectory.appendingPathComponent(filename)
        let data: Data
        if fileManager.fileExists(atPath: itemURL.path) {
            data = try! Data(contentsOf: itemURL)
        } else {
            data = try! Data(contentsOf: url)
            fileManager.createFile(atPath: itemURL.path, contents: data, attributes: nil)
        }
        let activityView = ActivityView(activityItems: [itemURL], applicationActivities: nil)
        return Group {
        if self.horizontalSizeClass == .regular && self.verticalSizeClass == .regular {
            activityView.frame(width: 333, height: 480)
        } else {
            activityView
            .edgesIgnoringSafeArea(.all)
            }
        }
    }
}


struct IalEdxMathsInnerView_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMaths2019JanView()
    }
}

//
struct IalMaths2019Jan: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

let IalMaths2019JanData: [IalMaths2019Jan] = load("IalMaths2019Jan.json")

