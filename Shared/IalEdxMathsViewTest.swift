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
    var body: some View {
        IalEdxMaths2019JanView()
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
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
            .navigationBarTitle("19 Spring", displayMode: .inline)
            .background(
                NavigationLink(destination: IalEdxMaths2019JanView(), isActive: $showNew1) {
                }
            )
    }
}

struct IalEdxMathsViewTest_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsViewTest()
    }
}
