//
//  IalEdxMathsView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/2.
//

import SwiftUI

struct IalEdxMathsView: View {
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
        //.listStyle(.sidebar)
        .listStyle(.plain)
        .navigationBarTitle("Years", displayMode: .inline)
    }
}

struct IalEdxMathsView_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsView()
    }
}
