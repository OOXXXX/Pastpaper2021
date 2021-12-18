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
    @State private var showNew1 = false
    @State private var showNew2 = false
    @State var selected = 1
    var body: some View {
        VStack{
            Picker(selection: $selected, label: Text("")){
                Text("Question Paper").tag(1)
                Text("Mark Scheme").tag(2)
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal, 10)
            .padding(.vertical, 6.5)
            
            if selected == 1{
                IalEdxMaths2019JanList1()
            }
            if selected == 2{
                IalEdxMaths2019JanList2()
            }
        }
        
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                HStack {
                    Menu() {
                        NavigationLink(destination: EmptyView()) {
                            Label("Show data booklet", systemImage: "list.bullet.rectangle.portrait")
                        }
                        NavigationLink(destination: EmptyView()) {
                            Label("Show Syllabus", systemImage: "character.book.closed")
                        }
                        NavigationLink(destination: EmptyView()) {
                            Label("Show course resources", systemImage: "bookmark")
                        }
                        Section(header: Text("Secondary actions")) {
                            NavigationLink(destination: EmptyView()) {
                                Label("Paper request", systemImage: "arrowshape.turn.up.right")
                            }
                        }
                    } label: {
                        Image(systemName: "ellipsis.circle")
                            //.foregroundColor(Color.gray)
                    }
                    Menu() {
                        Menu("2021") {
                            Button("Spring") {
                                //self.showNew1 = true
                            }
                            Button("Summer") {
                                //self.showNew2 = true
                            }
                            Button("Winter") {
                                //self.showNew1 = true
                            }
                        }
                        Menu("2020") {
                            Button("Spring") {
                                //self.showNew1 = true
                            }
                            Button("Summer") {
                                //self.showNew2 = true
                            }
                            Button("Winter") {
                                //self.showNew1 = true
                            }
                        }
                        Menu("2019") {
                            Button("Spring") {
                                self.showNew1 = true
                            }
                            Button("Summer") {
                                //self.showNew2 = true
                            }
                            Button("Winter") {
                                //self.showNew1 = true
                            }
                        }
                        Menu("2018") {
                            Button("Spring") {
                                //self.showNew1 = true
                            }
                            Button("Summer") {
                                //self.showNew2 = true
                            }
                            Button("Winter") {
                                //self.showNew1 = true
                            }
                        }
                        Menu("2017") {
                            Button("Spring") {
                                //self.showNew1 = true
                            }
                            Button("Summer") {
                                //self.showNew2 = true
                            }
                            Button("Winter") {
                                //self.showNew1 = true
                            }
                        }
                        Menu("2016") {
                            Button("Spring") {
                                //self.showNew1 = true
                            }
                            Button("Summer") {
                                //self.showNew2 = true
                            }
                            Button("Winter") {
                                //self.showNew1 = true
                            }
                        }
                        Menu("2015") {
                            Button("Spring") {
                                //self.showNew1 = true
                            }
                            Button("Summer") {
                                //self.showNew2 = true
                            }
                            Button("Winter") {
                                //self.showNew1 = true
                            }
                        }
                        Menu("2014") {
                            Button("Spring") {
                                //self.showNew1 = true
                            }
                            Button("Summer") {
                                //self.showNew2 = true
                            }
                            Button("Winter") {
                                //self.showNew1 = true
                            }
                        }
                        
                    }label: {
                        Label("Quick List", systemImage: "list.bullet.circle")
                    }
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("19 Spring", displayMode: .inline)
        .background(
            NavigationLink(destination: IalEdxMaths2019JanView(), isActive: $showNew1) {
            }
        )
    }
    func placeOrder() { }
    func adjustOrder() { }
}

struct IalEdxMaths2019JanList1: View {
    var  body: some View {
        List {
            ForEach(IalMaths2019JanData1)  { ialMaths2019Jan1 in
                NavigationLink(destination: IalEdxMaths2019JanWebView1(ialMaths2019Jan1: ialMaths2019Jan1)) {
                    Text(ialMaths2019Jan1.name)
                }
            }
        }
    }
}

struct IalEdxMaths2019JanList2: View {
    var  body: some View {
        List {
            ForEach(IalMaths2019JanData2)  { ialMaths2019Jan2 in
                NavigationLink(destination: IalEdxMaths2019JanWebView2(ialMaths2019Jan2: ialMaths2019Jan2)) {
                    Text(ialMaths2019Jan2.name)
                }
            }
        }
    }
}

struct IalEdxMaths2019JanWebView1: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2019Jan1: IalMaths2019Jan1
    
    var body: some View {
        Webview(url: ialMaths2019Jan1.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2019Jan1.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2019Jan1.url)!
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

struct IalEdxMaths2019JanWebView2: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    @State private var isPresented = false
    @State private var isActivityPopoverPresented = false
    @State private var isActivitySheetPresented = false
    var ialMaths2019Jan2: IalMaths2019Jan2
    
    var body: some View {
        Webview(url: ialMaths2019Jan2.url)
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle(ialMaths2019Jan2.name, displayMode: .inline)
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
        let url = URL(string: ialMaths2019Jan2.url)!
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
struct IalMaths2019Jan1: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

struct IalMaths2019Jan2: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var url: String
}

let IalMaths2019JanData1: [IalMaths2019Jan1] = load("IalMaths2019Jan1.json")
let IalMaths2019JanData2: [IalMaths2019Jan2] = load("IalMaths2019Jan2.json")

