//
//  IalEdxMathsViewTest.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/21.
//

import SwiftUI

struct IalEdxMathsViewTest: View {
    @State private var showNew1 = false
    @State private var showNew2 = false
    @State var selected = 1
    
    var body: some View {
        if selected == 1{
            IalEdxMaths2019JanView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        HStack {
                            Menu() {
                                NavigationLink(destination: EmptyView()) {
                                    Label("Show data booklet", systemImage: "list.bullet.rectangle.portrait")
                                }
                                NavigationLink(destination: EmptyView()) {
                                    Label("Show syllabus", systemImage: "character.book.closed")
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
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(3)
                                        Text("Summer").tag(4)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(5)
                                        Text("Summer").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(9)
                                        Text("Summer").tag(10)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(11)
                                        Text("Summer").tag(12)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(15)
                                        Text("Summer").tag(16)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                        }
                        }
                       
                    }
                }
        }
 
    }
}

struct IalEdxMathsViewTest_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsViewTest()
    }
}
