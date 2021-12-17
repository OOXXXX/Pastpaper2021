//
//  MonthView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/17.
//

import SwiftUI

struct MonthView: View {
    @State private var showNew1 = false
    var body: some View {
        List {
            Section(header: Text("Select Month")) {
                NavigationLink(destination: IalEdxMaths2019JanView()) {
                    Text("Jan/Feb")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("May/June")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Oct/Nov")
                }
            }
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
        .navigationBarTitle("Months", displayMode: .inline)
    }
    func placeOrder() { }
    func adjustOrder() { }
}

struct MonthView_Previews: PreviewProvider {
    static var previews: some View {
        MonthView()
    }
}
