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
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    
    var body: some View {
        Webview(url: "https://cdn.savemyexams.co.uk/wp-content/uploads/2020/12/WMA11_01_que_20190109.pdf")
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("WMA11/01", displayMode: .inline)
            .navigationBarItems(trailing: shareButton)
            .sheet(isPresented: $isActivitySheetPresented, content: activityView)
    }
    private var shareButton: some View {
        Button(action: {
            switch (self.horizontalSizeClass, self.verticalSizeClass) {
            case (.regular, .regular):
                // ⚠️ IMPORTANT: `UIActivityViewController` must be presented in a popover on iPad:
                self.isActivityPopoverPresented.toggle()
            default:
                // ⚠️ IMPORTANT: `UIActivityViewController` must be presented in a popover on iPhone and iPod Touch:
                self.isActivitySheetPresented.toggle()
            }
        }, label: {
            Image(systemName: "square.and.arrow.up")
                .font(.system(size: 17))
                .frame(width: 30, height: 30)
                .popover(isPresented: $isActivityPopoverPresented) {
                    activityView()
                }
                
        })
    }
    
    private func activityView() -> some View {
        let url = URL(string: "https://cdn.savemyexams.co.uk/wp-content/uploads/2020/12/WMA11_01_que_20190109.pdf")!
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
            activityView.frame(width: 330, height: 480)
        } else {
            activityView
            .edgesIgnoringSafeArea(.all)
            }
        }
    }
}


struct IalEdxMathsInnerView_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsInnerView()
    }
}
