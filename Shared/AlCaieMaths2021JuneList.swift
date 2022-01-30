//
//  AlCaieMaths2021JuneList.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2022/1/30.
//

import SwiftUI
import WebKit

struct AlCaieMaths2021JuneView1: View {

    @State var selected = 1
    var body: some View {
        VStack{
            Picker(selection: $selected, label: Text("")){
                Text("Question Paper").tag(1)
                Text("Mark Scheme").tag(2)
                Text("Other File").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 10)
            .padding(.vertical, 6.5)
            
            if selected == 1{
                AlCaieMaths2021JuneList1()
            }
            if selected == 2{
                AlCaieMaths2021JuneList2()
            }
            if selected == 3{
                AlCaieMaths2021JuneList3()
            }
        }
        .navigationBarTitle("21 Summer", displayMode: .inline)
        .listStyle(.plain)
    }
}

struct AlCaieMaths2021JuneView2: View {

    @State var selected = 1
    var body: some View {
        VStack{
            Picker(selection: $selected, label: Text("")){
                Text("Question Paper").tag(1)
                Text("Mark Scheme").tag(2)
                Text("Other File").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 10)
            .padding(.vertical, 6.5)
            
            if selected == 1{
                AlCaieMaths2021JuneList1()
            }
            if selected == 2{
                AlCaieMaths2021JuneList2()
            }
            if selected == 3{
                AlCaieMaths2021JuneList3()
            }
        }
        .navigationBarTitle("21 Summer", displayMode: .inline)
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

struct AlCaieMaths2021JuneView3: View {

    @State var selected = 1
    var body: some View {
        VStack{
            Picker(selection: $selected, label: Text("")){
                Text("Question Paper").tag(1)
                Text("Mark Scheme").tag(2)
                Text("Other File").tag(3)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 10)
            .padding(.vertical, 6.5)
            
            if selected == 1{
                AlCaieMaths2021JuneList1()
            }
            if selected == 2{
                AlCaieMaths2021JuneList2()
            }
            if selected == 3{
                AlCaieMaths2021JuneList3()
            }
        }
        .navigationBarTitle("21 Summer", displayMode: .inline)
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

struct AlCaieMaths2021JuneList1: View {
    var  body: some View {
        List {
            ForEach(AlCaieMaths2021JuneData1)  { AlCaieMaths2021June1 in
                NavigationLink(destination: AlCaieMaths2021JuneWebView1(AlCaieMaths2021June1: AlCaieMaths2021June1)) {
                    Text(AlCaieMaths2021June1.name)
                }
            }
        }
    }
}

struct AlCaieMaths2021JuneList2: View {
    var  body: some View {
        List {
            ForEach(AlCaieMaths2021JuneData2)  { AlCaieMaths2021June2 in
                NavigationLink(destination: AlCaieMaths2021JuneWebView2(AlCaieMaths2021June2: AlCaieMaths2021June2)) {
                    Text(AlCaieMaths2021June2.name)
                }
            }
        }
    }
}

struct AlCaieMaths2021JuneList3: View {
    var  body: some View {
        List {
            ForEach(AlCaieMaths2021JuneData3)  { AlCaieMaths2021June3 in
                NavigationLink(destination: AlCaieMaths2021JuneWebView3(AlCaieMaths2021June3: AlCaieMaths2021June3)) {
                    Text(AlCaieMaths2021June3.name)
                }
            }
        }
    }
}

struct AlCaieMaths2021JuneWebView1: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var AlCaieMaths2021June1: AlCaieMaths2021June1
    
    var body: some View {
        Webview(url: AlCaieMaths2021June1.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(AlCaieMaths2021June1.name, displayMode: .inline)
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
        let url = URL(string: AlCaieMaths2021June1.url)!
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

struct AlCaieMaths2021JuneWebView2: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var AlCaieMaths2021June2: AlCaieMaths2021June2
    
    var body: some View {
        Webview(url: AlCaieMaths2021June2.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(AlCaieMaths2021June2.name, displayMode: .inline)
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
        let url = URL(string: AlCaieMaths2021June2.url)!
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

struct AlCaieMaths2021JuneWebView3: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var AlCaieMaths2021June3: AlCaieMaths2021June3
    
    var body: some View {
        Webview(url: AlCaieMaths2021June3.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(AlCaieMaths2021June3.name, displayMode: .inline)
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
        let url = URL(string: AlCaieMaths2021June3.url)!
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

struct AlCaieMaths2021June1: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct AlCaieMaths2021June2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct AlCaieMaths2021June3: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

let AlCaieMaths2021JuneData1: [AlCaieMaths2021June1] = load("AlCaieMaths2021June1.json")
let AlCaieMaths2021JuneData2: [AlCaieMaths2021June2] = load("AlCaieMaths2021June2.json")
let AlCaieMaths2021JuneData3: [AlCaieMaths2021June3] = load("AlCaieMaths2021June3.json")


