//
//  IalEdxMaths2014JanList.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/31.
//

import SwiftUI
import WebKit

struct IalEdxMaths2014JanView: View {
    
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
                IalEdxMaths2014JanList1()
            }
            if selected == 2{
                IalEdxMaths2014JanList2()
            }
            if selected == 3{
                IalEdxMaths2014JanList3()
            }
        }
        .navigationBarTitle("14 Spring", displayMode: .inline)
        .listStyle(.plain)
    }
}

struct IalEdxMaths2014JanView1: View {
    
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
                IalEdxMaths2014JanList1()
            }
            if selected == 2{
                IalEdxMaths2014JanList2()
            }
            if selected == 3{
                IalEdxMaths2014JanList3()
            }
        }
        .navigationBarTitle("14 Spring", displayMode: .inline)
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

struct IalEdxMaths2014JanList1: View {
    var  body: some View {
        List {
            ForEach(IalMaths2014JanData1)  { ialMaths2014Jan1 in
                NavigationLink(destination: IalEdxMaths2014JanWebView1(ialMaths2014Jan1: ialMaths2014Jan1)) {
                    Text(ialMaths2014Jan1.name)
                }
            }
        }
    }
}

struct IalEdxMaths2014JanList2: View {
    var  body: some View {
        List {
            ForEach(IalMaths2014JanData2)  { ialMaths2014Jan2 in
                NavigationLink(destination: IalEdxMaths2014JanWebView2(ialMaths2014Jan2: ialMaths2014Jan2)) {
                    Text(ialMaths2014Jan2.name)
                }
            }
        }
    }
}

struct IalEdxMaths2014JanList3: View {
    var  body: some View {
        List {
            ForEach(IalMaths2014JanData3)  { ialMaths2014Jan3 in
                NavigationLink(destination: IalEdxMaths2014JanWebView3(ialMaths2014Jan3: ialMaths2014Jan3)) {
                    Text(ialMaths2014Jan3.name)
                }
            }
        }
    }
}

struct IalEdxMaths2014JanWebView1: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2014Jan1: IalMaths2014Jan1
    
    var body: some View {
        Webview(url: ialMaths2014Jan1.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2014Jan1.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2014Jan1.url)!
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

struct IalEdxMaths2014JanWebView2: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2014Jan2: IalMaths2014Jan2
    
    var body: some View {
        Webview(url: ialMaths2014Jan2.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2014Jan2.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2014Jan2.url)!
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

struct IalEdxMaths2014JanWebView3: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2014Jan3: IalMaths2014Jan3
    
    var body: some View {
        Webview(url: ialMaths2014Jan3.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2014Jan3.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2014Jan3.url)!
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

struct IalMaths2014Jan1: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct IalMaths2014Jan2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct IalMaths2014Jan3: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

let IalMaths2014JanData1: [IalMaths2014Jan1] = load("IalMaths2014Jan1.json")
let IalMaths2014JanData2: [IalMaths2014Jan2] = load("IalMaths2014Jan2.json")
let IalMaths2014JanData3: [IalMaths2014Jan3] = load("IalMaths2014Jan3.json")




