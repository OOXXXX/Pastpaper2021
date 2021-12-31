//
//  MonthView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/17.
//

import SwiftUI

struct MonthView1: View {
    var body: some View {
        List {
            Section(header: Text("Select Month")) {
                NavigationLink(destination: IalEdxMaths2021JanView1()) {
                    Text("Jan/Feb")
                }
                NavigationLink(destination: IalEdxMaths2021JuneView1()) {
                    Text("May/June")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Months", displayMode: .inline)
    }
}

struct MonthView2: View {
    var body: some View {
        List {
            Section(header: Text("Select Month")) {
                NavigationLink(destination: IalEdxMaths2020JanView1()) {
                    Text("Jan/Feb")
                }
                NavigationLink(destination: IalEdxMaths2020OctView1()) {
                    Text("Oct/Nov")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Months", displayMode: .inline)
    }
}

struct MonthView3: View {
    var body: some View {
        List {
            Section(header: Text("Select Month")) {
                NavigationLink(destination: IalEdxMaths2019JanView1()) {
                    Text("Jan/Feb")
                }
                NavigationLink(destination: IalEdxMaths2019JuneView1()) {
                    Text("May/June")
                }
                NavigationLink(destination: IalEdxMaths2019OctView1()) {
                    Text("Oct/Nov")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Months", displayMode: .inline)
    }
}

struct MonthView4: View {
    var body: some View {
        List {
            Section(header: Text("Select Month")) {
                NavigationLink(destination: IalEdxMaths2018JanView1()) {
                    Text("Jan/Feb")
                }
                NavigationLink(destination: IalEdxMaths2018JuneView1()) {
                    Text("May/June")
                }
                NavigationLink(destination: IalEdxMaths2018OctView1()) {
                    Text("Oct/Nov")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Months", displayMode: .inline)
    }
}

struct MonthView5: View {
    var body: some View {
        List {
            Section(header: Text("Select Month")) {
                NavigationLink(destination: IalEdxMaths2017JanView1()) {
                    Text("Jan/Feb")
                }
                NavigationLink(destination: IalEdxMaths2017JuneView1()) {
                    Text("May/June")
                }
                NavigationLink(destination: IalEdxMaths2017OctView1()) {
                    Text("Oct/Nov")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Months", displayMode: .inline)
    }
}

struct MonthView6: View {
    var body: some View {
        List {
            Section(header: Text("Select Month")) {
                NavigationLink(destination: IalEdxMaths2016JanView1()) {
                    Text("Jan/Feb")
                }
                NavigationLink(destination: IalEdxMaths2016JuneView1()) {
                    Text("May/June")
                }
                NavigationLink(destination: IalEdxMaths2016OctView1()) {
                    Text("Oct/Nov")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Months", displayMode: .inline)
    }
}

struct MonthView7: View {
    var body: some View {
        List {
            Section(header: Text("Select Month")) {
                NavigationLink(destination: IalEdxMaths2015JanView1()) {
                    Text("Jan/Feb")
                }
                NavigationLink(destination: IalEdxMaths2015JuneView1()) {
                    Text("May/June")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Months", displayMode: .inline)
    }
}

struct MonthView8: View {
    var body: some View {
        List {
            Section(header: Text("Select Month")) {
                NavigationLink(destination: IalEdxMaths2014JanView1()) {
                    Text("Jan/Feb")
                }
                NavigationLink(destination: IalEdxMaths2014JuneView1()) {
                    Text("May/June")
                }
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Months", displayMode: .inline)
    }
}

