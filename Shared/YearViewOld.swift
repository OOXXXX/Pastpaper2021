//
//  IalEdxMathsView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/2.
//

import SwiftUI

struct IalEdxMathsYearView: View {
    var body: some View {
        List {            
            Section(header: Text("Select Year")) {
                
                NavigationLink(destination: SeasonView1()) {
                    Text("2021")
                }
                NavigationLink(destination: SeasonView2()) {
                    Text("2020")
                }
                NavigationLink(destination: SeasonView3()) {
                    Text("2019")
                }
                NavigationLink(destination: SeasonView4()) {
                    Text("2018")
                }
                NavigationLink(destination: SeasonView5()) {
                    Text("2017")
                }
                NavigationLink(destination: SeasonView6()) {
                    Text("2016")
                }
                NavigationLink(destination: SeasonView7()) {
                    Text("2015")
                }
                NavigationLink(destination: SeasonView8()) {
                    Text("2014")
                }
            }
            .headerProminence(.increased)

        }
        .listStyle(.plain)
        .navigationBarTitle("Years", displayMode: .inline)
    }
}

struct AlCaieMathsYearView: View {
    var body: some View {
        List {
            Section(header: Text("Select Year")) {
                NavigationLink(destination: SeasonView9()) {
                    Text("2021")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("2020")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("2019")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("2018")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("2017")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("2016")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("2015")
                }
                NavigationLink(destination: EmptyView()) {
                    Text("2014")
                }
                Group{
                    NavigationLink(destination: EmptyView()) {
                        Text("2013")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Text("2012")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Text("2011")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Text("2010")
                    }
                }
                
            }
            .headerProminence(.increased)

        }
        .listStyle(.plain)
        .navigationBarTitle("Years", displayMode: .inline)
    }
}


