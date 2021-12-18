//
//  IalEdxMathsView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/2.
//

import SwiftUI

struct IalEdxMathsView: View {
    @State private var showNew1 = false
    var body: some View {
        List {            
            Section(header: Text("Select Year")) {
                
                NavigationLink(destination: Text("quali")) {
                    Text("2021")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2020")
                }
                NavigationLink(destination: MonthView()) {
                    Text("2019")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2018")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2017")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2016")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2015")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2014")
                }
            }
            .headerProminence(.increased)

        }
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
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
                }
                label: {
                    Label("Quick List", systemImage: "list.bullet.circle")
                }
            }
        }
        .background(
            NavigationLink(destination: IalEdxMaths2019JanView(), isActive: $showNew1) {
            }
        )
        .listStyle(.plain)
        .navigationBarTitle("Years", displayMode: .inline)
    }
    func placeOrder() { }
    func adjustOrder() { }
}

struct IalEdxMathsView_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsView()
    }
}
