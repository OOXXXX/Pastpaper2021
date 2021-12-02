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
             //.hoverEffect(.highlight)
             //.padding(.trailing, -5)
             //.padding(.bottom, 5)
        })
    }
}


struct IalEdxMathsInnerView_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsInnerView()
    }
}
