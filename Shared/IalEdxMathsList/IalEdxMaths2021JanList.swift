//
//  IalEdxMaths2021JanList.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/26.
//

import SwiftUI
import WebKit

struct IalEdxMaths2021JanView: View {

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
                IalEdxMaths2021JanList1()
            }
            if selected == 2{
                IalEdxMaths2021JanList2()
            }
            if selected == 3{
                IalEdxMaths2021JanList3()
            }
        }
        .navigationBarTitle("21 Spring", displayMode: .inline)
        .listStyle(.plain)
    }
}

struct IalEdxMaths2021JanView1: View {

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
                IalEdxMaths2021JanList1()
            }
            if selected == 2{
                IalEdxMaths2021JanList2()
            }
            if selected == 3{
                IalEdxMaths2021JanList3()
            }
        }
        .navigationBarTitle("21 Spring", displayMode: .inline)
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

struct IalEdxMaths2021JanList1: View {
    var  body: some View {
        List {
            ForEach(IalMaths2021JanData1)  { ialMaths2021Jan1 in
                NavigationLink(destination: IalEdxMaths2021JanWebView1(ialMaths2021Jan1: ialMaths2021Jan1)) {
                    Text(ialMaths2021Jan1.name)
                }
            }
        }
    }
}

struct IalEdxMaths2021JanList2: View {
    var  body: some View {
        List {
            ForEach(IalMaths2021JanData2)  { ialMaths2021Jan2 in
                NavigationLink(destination: IalEdxMaths2021JanWebView2(ialMaths2021Jan2: ialMaths2021Jan2)) {
                    Text(ialMaths2021Jan2.name)
                }
            }
        }
    }
}

struct IalEdxMaths2021JanList3: View {
    var  body: some View {
        List {
            ForEach(IalMaths2021JanData3)  { ialMaths2021Jan3 in
                NavigationLink(destination: IalEdxMaths2021JanWebView3(ialMaths2021Jan3: ialMaths2021Jan3)) {
                    Text(ialMaths2021Jan3.name)
                }
            }
        }
    }
}

struct IalEdxMaths2021JanWebView1: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2021Jan1: IalMaths2021Jan1
    
    var body: some View {
        Webview(url: ialMaths2021Jan1.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2021Jan1.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2021Jan1.url)!
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

struct IalEdxMaths2021JanWebView2: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2021Jan2: IalMaths2021Jan2
    
    var body: some View {
        Webview(url: ialMaths2021Jan2.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2021Jan2.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2021Jan2.url)!
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

struct IalEdxMaths2021JanWebView3: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2021Jan3: IalMaths2021Jan3
    
    var body: some View {
        Webview(url: ialMaths2021Jan3.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2021Jan3.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2021Jan3.url)!
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

struct IalMaths2021Jan1: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct IalMaths2021Jan2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct IalMaths2021Jan3: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

let IalMaths2021JanData1: [IalMaths2021Jan1] = load("IalMaths2021Jan1.json")
let IalMaths2021JanData2: [IalMaths2021Jan2] = load("IalMaths2021Jan2.json")
let IalMaths2021JanData3: [IalMaths2021Jan3] = load("IalMaths2021Jan3.json")

