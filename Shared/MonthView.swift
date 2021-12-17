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
                        Button("Jan/Feb") {
                            self.showNew1 = true
                        }
                        Button("May/June") {
                            //self.showNew2 = true
                        }
                        Button("Oct/Nov") {
                            //self.showNew1 = true
                        }
                    }
                    Button("2020") {
                        self.showNew1 = true
                    }
                    Button("2019", action: placeOrder)
                    Button("2018", action: placeOrder)
                    Button("2017", action: placeOrder)
                    Button("2016", action: placeOrder)
                    Button("2015", action: placeOrder)
                    Button("2014", action: placeOrder)
                    
                }label: {
                    Label("Create", systemImage: "list.bullet.circle")
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
