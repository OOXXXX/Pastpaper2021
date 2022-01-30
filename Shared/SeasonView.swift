//
//  SeasonView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2022/1/30.
//

import SwiftUI

struct SeasonView1: View {
    var body: some View {
        List {
            Section(header: Text("Select Season")) {
                NavigationLink(destination: IalEdxMaths2021JanView1()) {
                    Text("Spring")
                }
                NavigationLink(destination: IalEdxMaths2021JuneView1()) {
                    Text("Summer")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Exam Seasons", displayMode: .inline)
    }
}

struct SeasonView2: View {
    var body: some View {
        List {
            Section(header: Text("Select Season")) {
                NavigationLink(destination: IalEdxMaths2020JanView1()) {
                    Text("Spring")
                }
                NavigationLink(destination: IalEdxMaths2020OctView1()) {
                    Text("Winter")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Exam Seasons", displayMode: .inline)
    }
}

struct SeasonView3: View {
    var body: some View {
        List {
            Section(header: Text("Select Season")) {
                NavigationLink(destination: IalEdxMaths2019JanView1()) {
                    Text("Spring")
                }
                NavigationLink(destination: IalEdxMaths2019JuneView1()) {
                    Text("Summer")
                }
                NavigationLink(destination: IalEdxMaths2019OctView1()) {
                    Text("Winter")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Exam Seasons", displayMode: .inline)
    }
}

struct SeasonView4: View {
    var body: some View {
        List {
            Section(header: Text("Select Season")) {
                NavigationLink(destination: IalEdxMaths2018JanView1()) {
                    Text("Spring")
                }
                NavigationLink(destination: IalEdxMaths2018JuneView1()) {
                    Text("Summer")
                }
                NavigationLink(destination: IalEdxMaths2018OctView1()) {
                    Text("Winter")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Exam Seasons", displayMode: .inline)
    }
}

struct SeasonView5: View {
    var body: some View {
        List {
            Section(header: Text("Select Season")) {
                NavigationLink(destination: IalEdxMaths2017JanView1()) {
                    Text("Spring")
                }
                NavigationLink(destination: IalEdxMaths2017JuneView1()) {
                    Text("Summer")
                }
                NavigationLink(destination: IalEdxMaths2017OctView1()) {
                    Text("Winter")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Exam Seasons", displayMode: .inline)
    }
}

struct SeasonView6: View {
    var body: some View {
        List {
            Section(header: Text("Select Season")) {
                NavigationLink(destination: IalEdxMaths2016JanView1()) {
                    Text("Spring")
                }
                NavigationLink(destination: IalEdxMaths2016JuneView1()) {
                    Text("Summer")
                }
                NavigationLink(destination: IalEdxMaths2016OctView1()) {
                    Text("Winter")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Exam Seasons", displayMode: .inline)
    }
}

struct SeasonView7: View {
    var body: some View {
        List {
            Section(header: Text("Select Season")) {
                NavigationLink(destination: IalEdxMaths2015JanView1()) {
                    Text("Spring")
                }
                NavigationLink(destination: IalEdxMaths2015JuneView1()) {
                    Text("Summer")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Exam Seasons", displayMode: .inline)
    }
}

struct SeasonView8: View {
    var body: some View {
        List {
            Section(header: Text("Select Season")) {
                NavigationLink(destination: IalEdxMaths2014JanView1()) {
                    Text("Spring")
                }
                NavigationLink(destination: IalEdxMaths2014JuneView1()) {
                    Text("Summer")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Exam Seasons", displayMode: .inline)
    }
}
