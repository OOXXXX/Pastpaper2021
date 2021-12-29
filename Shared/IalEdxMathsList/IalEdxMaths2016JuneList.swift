//
//  IalEdxMaths2016JuneList.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/29.
//

import SwiftUI
import WebKit

struct IalEdxMaths2016JuneView: View {
    
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
                IalEdxMaths2016JuneList1()
            }
            if selected == 2{
                IalEdxMaths2016JuneList2()
            }
            if selected == 3{
                IalEdxMaths2016JuneList3()
            }
        }
        .navigationBarTitle("16 Summer", displayMode: .inline)
        .listStyle(.plain)
    }
}

struct IalEdxMaths2016JuneView1: View {
    
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
                IalEdxMaths2016JuneList1()
            }
            if selected == 2{
                IalEdxMaths2016JuneList2()
            }
            if selected == 3{
                IalEdxMaths2016JuneList3()
            }
        }
        .navigationBarTitle("16 Summer", displayMode: .inline)
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


struct IalEdxMaths2016JuneList1: View {
    var  body: some View {
        List {
            ForEach(IalMaths2016JuneData1)  { ialMaths2016June1 in
                NavigationLink(destination: IalEdxMaths2016JuneWebView1(ialMaths2016June1: ialMaths2016June1)) {
                    Text(ialMaths2016June1.name)
                }
            }
        }
    }
}

struct IalEdxMaths2016JuneList2: View {
    var  body: some View {
        List {
            ForEach(IalMaths2016JuneData2)  { ialMaths2016June2 in
                NavigationLink(destination: IalEdxMaths2016JuneWebView2(ialMaths2016June2: ialMaths2016June2)) {
                    Text(ialMaths2016June2.name)
                }
            }
        }
    }
}

struct IalEdxMaths2016JuneList3: View {
    var  body: some View {
        List {
            ForEach(IalMaths2016JuneData3)  { ialMaths2016June3 in
                NavigationLink(destination: IalEdxMaths2016JuneWebView3(ialMaths2016June3: ialMaths2016June3)) {
                    Text(ialMaths2016June3.name)
                }
            }
        }
    }
}

struct IalEdxMaths2016JuneWebView1: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2016June1: IalMaths2016June1
    
    var body: some View {
        Webview(url: ialMaths2016June1.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2016June1.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2016June1.url)!
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

struct IalEdxMaths2016JuneWebView2: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2016June2: IalMaths2016June2
    
    var body: some View {
        Webview(url: ialMaths2016June2.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2016June2.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2016June2.url)!
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

struct IalEdxMaths2016JuneWebView3: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2016June3: IalMaths2016June3
    
    var body: some View {
        Webview(url: ialMaths2016June3.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2016June3.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2016June3.url)!
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

struct IalMaths2016June1: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct IalMaths2016June2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct IalMaths2016June3: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

let IalMaths2016JuneData1: [IalMaths2016June1] = load("IalMaths2016June1.json")
let IalMaths2016JuneData2: [IalMaths2016June2] = load("IalMaths2016June2.json")
let IalMaths2016JuneData3: [IalMaths2016June3] = load("IalMaths2016June3.json")




