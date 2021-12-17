//
//  MonthView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/17.
//

import SwiftUI

struct MonthView: View {
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
        .listStyle(.plain)
        .navigationBarTitle("Months", displayMode: .inline)
    }
}

struct MonthView_Previews: PreviewProvider {
    static var previews: some View {
        MonthView()
    }
}
