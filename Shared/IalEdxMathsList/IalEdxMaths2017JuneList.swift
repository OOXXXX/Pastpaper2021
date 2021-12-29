//
//  IalEdxMaths2017JuneList.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/29.
//

import SwiftUI
import WebKit

struct IalEdxMaths2017JuneView: View {
    
    @State var selected = 1
    var body: some View {
        VStack{
            Picker(selection: $selected, label: Text("")){
                Text("Question Paper").tag(1)
                Text("Mark Scheme").tag(2)
                Text("Examiner Report").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 10)
            .padding(.vertical, 6.5)
            
            if selected == 1{
                IalEdxMaths2017JuneList1()
            }
            if selected == 2{
                IalEdxMaths2017JuneList2()
            }
            if selected == 3{
                IalEdxMaths2017JuneList3()
            }
        }
        .navigationBarTitle("17 Summer", displayMode: .inline)
        .listStyle(.plain)
    }
}

struct IalEdxMaths2017JuneView1: View {
    
    @State var selected = 1
    var body: some View {
        VStack{
            Picker(selection: $selected, label: Text("")){
                Text("Question Paper").tag(1)
                Text("Mark Scheme").tag(2)
                Text("Examiner Report").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 10)
            .padding(.vertical, 6.5)
            
            if selected == 1{
                IalEdxMaths2017JuneList1()
            }
            if selected == 2{
                IalEdxMaths2017JuneList2()
            }
            if selected == 3{
                IalEdxMaths2017JuneList3()
            }
        }
        .navigationBarTitle("17 Summer", displayMode: .inline)
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement: .primaryAction){
                Menu() {
                    ToolBarView()
                } label: {
                    Image(systemName: "ellipsis.circle")
                }
            }
        }
    }
}

struct IalEdxMaths2017JuneList1: View {
    var  body: some View {
        List {
            ForEach(IalMaths2017JuneData1)  { ialMaths2017June1 in
                NavigationLink(destination: IalEdxMaths2017JuneWebView1(ialMaths2017June1: ialMaths2017June1)) {
                    Text(ialMaths2017June1.name)
                }
            }
        }
    }
}

struct IalEdxMaths2017JuneList2: View {
    var  body: some View {
        List {
            ForEach(IalMaths2017JuneData2)  { ialMaths2017June2 in
                NavigationLink(destination: IalEdxMaths2017JuneWebView2(ialMaths2017June2: ialMaths2017June2)) {
                    Text(ialMaths2017June2.name)
                }
            }
        }
    }
}

struct IalEdxMaths2017JuneList3: View {
    var  body: some View {
        List {
            ForEach(IalMaths2017JuneData3)  { ialMaths2017June3 in
                NavigationLink(destination: IalEdxMaths2017JuneWebView3(ialMaths2017June3: ialMaths2017June3)) {
                    Text(ialMaths2017June3.name)
                }
            }
        }
    }
}

struct IalEdxMaths2017JuneWebView1: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2017June1: IalMaths2017June1
    
    var body: some View {
        Webview(url: ialMaths2017June1.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2017June1.name, displayMode: .inline)
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
                let impactLight = UIImpactFeedbackGenerator(style: .light)
                impactLight.impactOccurred()
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
        let url = URL(string: ialMaths2017June1.url)!
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

struct IalEdxMaths2017JuneWebView2: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2017June2: IalMaths2017June2
    
    var body: some View {
        Webview(url: ialMaths2017June2.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2017June2.name, displayMode: .inline)
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
                let impactLight = UIImpactFeedbackGenerator(style: .light)
                impactLight.impactOccurred()
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
        let url = URL(string: ialMaths2017June2.url)!
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

struct IalEdxMaths2017JuneWebView3: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2017June3: IalMaths2017June3
    
    var body: some View {
        Webview(url: ialMaths2017June3.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2017June3.name, displayMode: .inline)
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
                let impactLight = UIImpactFeedbackGenerator(style: .light)
                impactLight.impactOccurred()
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
        let url = URL(string: ialMaths2017June3.url)!
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

struct IalMaths2017June1: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct IalMaths2017June2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct IalMaths2017June3: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

let IalMaths2017JuneData1: [IalMaths2017June1] = load("IalMaths2017June1.json")
let IalMaths2017JuneData2: [IalMaths2017June2] = load("IalMaths2017June2.json")
let IalMaths2017JuneData3: [IalMaths2017June3] = load("IalMaths2017June3.json")



