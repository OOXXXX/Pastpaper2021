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
        WebView(url: URL(string: "https://cdn.savemyexams.co.uk/wp-content/uploads/2020/12/WMA11_01_que_20190109.pdf")!)
            .edgesIgnoringSafeArea(.all)
    }
        
}

struct WebView: UIViewRepresentable {
 
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}


struct IalEdxMathsInnerView_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsInnerView()
    }
}
