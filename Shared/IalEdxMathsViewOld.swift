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
                
                NavigationLink(destination: MonthView1()) {
                    Text("2021")
                }
                NavigationLink(destination: MonthView2()) {
                    Text("2020")
                }
                NavigationLink(destination: MonthView3()) {
                    Text("2019")
                }
                NavigationLink(destination: MonthView4()) {
                    Text("2018")
                }
                NavigationLink(destination: MonthView5()) {
                    Text("2017")
                }
                NavigationLink(destination: MonthView6()) {
                    Text("2016")
                }
                NavigationLink(destination: MonthView7()) {
                    Text("2015")
                }
                NavigationLink(destination: MonthView8()) {
                    Text("2014")
                }
            }
            .headerProminence(.increased)

        }
        .listStyle(.plain)
        .navigationBarTitle("Years", displayMode: .inline)
    }
}

struct IalEdxMathsView_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsView()
    }
}
