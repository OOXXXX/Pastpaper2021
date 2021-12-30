//
//  ContentView.swift
//  Shared
//
//  Created by ZhuPinxi on 2021/11/26.
//

import SwiftUI
import BetterSafariView
import NavigationSearchBar

struct Quali {
    let image: String
    let name: String
    let color: Color
}

struct Exam {
    let image: String
    let name: String
    let color: Color
}

struct Contest {
    let image: String
    let name: String
    let color: Color
}

struct ContentView: View {
    @State var text: String = ""
    @State var scopeSelection: Int = 0
    @State private var showingAlert = false
    @State private var showingSettingSheet = false
    @State private var showingInfoSheet = false
    //@State private var showTraditionStack = false
    @State private var showTraditionStack1 = false
    @AppStorage("showTraditionStack") var showTraditionStack: Bool = false
    
    var qualiList = [
        Quali(image: "i.square.fill", name: "IGCSE", color: .blue),
        Quali(image: "a.square.fill", name: "Advanced Level", color: .green),
        Quali(image: "i.square.fill", name: "International Advanced Level", color: .indigo),
        Quali(image: "o.square.fill", name: "OLevel", color: .purple),
        Quali(image: "i.square.fill", name: "IBDP", color: .yellow),
    ]
    
    var examList = [
        Exam(image: "c.square.fill", name: "CAIE", color: .brown),
        Exam(image: "e.square.fill", name: "Edexcel", color: .mint),
        Exam(image: "a.square.fill", name: "AQA", color: .red),
    ]
    
    var contestList = [
        Contest(image: "c.square.fill", name: "Cambridge admissions", color: .orange),
        Contest(image: "o.square.fill", name: "Oxford admissions", color: .gray),
        Contest(image: "m.square.fill", name: "MAA AMC", color: .cyan),
        Contest(image: "u.square.fill", name: "UKMT", color: .black),
    ]
    
    let qualifications = ["IGCSE", "Advanced Level", "International Advanced Level", "OLevel", "IBDP"]
    let bureaus = ["CAIE", "Edexcel", "AQA"]
    let extraTests = ["Oxford admissions", "Cambridge admissions", "MAA AMC", "UKMT"]
    let websites = ["Oxford", "Cambridge", "Imperial London", "London School of Economics", "University College London"]

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Qualifications")) {
                    NavigationLink(destination: ALView()) {
                        HStack {
                            Image(systemName: "a.square.fill")
                                .font(Font.system(.title))
                                .foregroundColor(.green)
                            Text("AS & A Levels")
                        }
                        .offset(x: -8)
                    }
                    if showTraditionStack {
                        NavigationLink(destination: IalViewNew()) {
                            HStack {
                                Image(systemName: "i.square.fill")
                                    .font(Font.system(.title))
                                    .foregroundColor(.indigo)
                                Text("International AS & A Levels")
                            }
                            .offset(x: -8)
                        }
                    } else {
                        NavigationLink(destination: IALView()) {
                            HStack {
                                Image(systemName: "i.square.fill")
                                    .font(Font.system(.title))
                                    .foregroundColor(.indigo)
                                Text("International AS & A Levels")
                            }
                            .offset(x: -8)
                        }
                    }
                    NavigationLink(destination: IGCSEView()) {
                        HStack {
                            Image(systemName: "i.square.fill")
                                .font(Font.system(.title))
                                .foregroundColor(.blue)
                            Text("International GCSE")
                        }
                        .offset(x: -8)
                    }
                    
                    Button(action: {
                        self.showingAlert = true
                    }) {
                        HStack {
                            Group {
                                Image(systemName: "i.square.fill")
                                    .font(Font.system(.title))
                                    .foregroundColor(.yellow)
                                Text("IBDP")
                                    .foregroundColor(Color("Color2"))
                            }
                            .offset(x: -8)
                            
                            Spacer()
                            DisclosureIndicator()
                        }
                        .alert("Still under development 🚴", isPresented: $showingAlert) {
                            
                        }
                    }
                    
                    NavigationLink(destination: OLView()) {
                        HStack {
                            Image(systemName: "o.square.fill")
                                .font(Font.system(.title))
                                .foregroundColor(.purple)
                            Text("O Level")
                        }
                        .offset(x: -8)
                    }
                }
                .headerProminence(.increased)

                Section(header: Text("Examination Bureau")) {
                    NavigationLink(destination: CAIEView()) {
                        HStack {
                            Image(systemName: "c.square.fill")
                                .font(Font.system(.title))
                                .foregroundColor(.brown)
                            Text("CAIE")
                        }
                        .offset(x: -8)
                    }
                    NavigationLink(destination: EdexcelView()) {
                        HStack {
                            Image(systemName: "e.square.fill")
                                .font(Font.system(.title))
                                .foregroundColor(.mint)
                            Text("Edexcel")
                        }
                        .offset(x: -8)
                    }
                    NavigationLink(destination: AqaView()) {
                        HStack {
                            Image(systemName: "a.square.fill")
                                .font(Font.system(.title))
                                .foregroundColor(.red)
                            Text("AQA")
                        }
                        .offset(x: -8)
                    }
                }
                .listSectionSeparator(.visible)
                .headerProminence(.increased)
                
                Section(header: Text("Admissions Tests")) {
                    Button(action: {
                        self.showingAlert = true
                    }) {
                        HStack {
                            Group {
                                Image(systemName: "c.square.fill")
                                    .font(Font.system(.title))
                                    .foregroundColor(.orange)
                                Text("Cambridge admissions")
                                    .foregroundColor(Color("Color2"))
                            }
                            .offset(x: -8)
                            
                            Spacer()
                            DisclosureIndicator()
                        }
                        .alert("Still under development 🚴", isPresented: $showingAlert) {
                        }
                    }
                    Button(action: {
                        self.showingAlert = true
                    }) {
                        HStack {
                            Group {
                                Image(systemName: "o.square.fill")
                                    .font(Font.system(.title))
                                    .foregroundColor(.gray)
                                Text("Oxford admissions")
                                    .foregroundColor(Color("Color2"))
                            }
                            .offset(x: -8)
                            
                            Spacer()
                            DisclosureIndicator()
                        }
                        .alert("Still under development 🚴", isPresented: $showingAlert) {
                            
                        }
                    }
                    Button(action: {
                        self.showingAlert = true
                    }) {
                        HStack {
                            Group {
                                Image(systemName: "m.square.fill")
                                    .font(Font.system(.title))
                                    .foregroundColor(.cyan)
                                Text("MAA AMC")
                                    .foregroundColor(Color("Color2"))
                            }
                            .offset(x: -8)
                            
                            Spacer()
                            DisclosureIndicator()
                        }
                        .alert("Still under development 🚴", isPresented: $showingAlert) {
                            
                        }
                    }
                    Button(action: {
                        self.showingAlert = true
                    }) {
                        HStack {
                            Group {
                                Image(systemName: "u.square.fill")
                                    .font(Font.system(.title))
                                    .foregroundColor(.black)
                                Text("UKMT")
                                    .foregroundColor(Color("Color2"))
                            }
                            .offset(x: -8)
                            
                            Spacer()
                            DisclosureIndicator()
                        }
                        .alert("Still under development 🚴", isPresented: $showingAlert) {
                            
                        }
                    }
                }
                .listSectionSeparator(.visible)
                .headerProminence(.increased)
                
                //OfficialWebsitesView()
            }
            //.listRowInsets(EdgeInsets())
            //.padding(.vertical, -10)
            .listStyle(.automatic)
            //.searchable(text: $searchText, placement: .navigationBarDrawer)
            .navigationBarTitle("PaperClub", displayMode: .large)
            //.navigationBarHidden(false)
            .toolbar(content: {
                ToolbarItem(placement: .primaryAction){
                    HStack {
                       
                        Button(action: {
                            let impactLight = UIImpactFeedbackGenerator(style: .rigid)
                            impactLight.impactOccurred()
                        }) {
                            Image(systemName: "ellipsis.circle")
                        }
                        
                        
                        Button(action: {
                            showingSettingSheet.toggle()
                            let impactLight = UIImpactFeedbackGenerator(style: .rigid)
                            impactLight.impactOccurred()
                        }) {
                            Image(systemName: "gearshape")
                        }
                        .sheet(isPresented: $showingSettingSheet) {
                            SettingView(showTraditionStack: $showTraditionStack)
                        }
                    }
                }
                ToolbarItem(placement: .navigationBarLeading){
                    HStack {
                        Button {
                            
                        }label: {
                            Text("Edit")
                       }
                    }
                }
            })
            .padding(.top, -18)
            .navigationSearchBar(text: $text,
                                 scopeSelection: $scopeSelection,
                                 options: [
                                    .automaticallyShowsSearchBar: true,
                                    .obscuresBackgroundDuringPresentation: true,
                                    .hidesNavigationBarDuringPresentation: true,
                                    .hidesSearchBarWhenScrolling: false,
                                    .placeholder: "Search",
                                    .showsBookmarkButton: true,
                                    .scopeButtonTitles: ["All", "Subject", "Pastpaper"]
                                 ],
                                 actions: [
                                    .onCancelButtonClicked: {
                                        print("Cancel")
                                    },
                                    .onSearchButtonClicked: {
                                        print("Search")
                                    },
                                    .onBookmarkButtonClicked: {
                                        print("Present Bookmarks")
                                    }
                                 ], searchResultsContent: {
                                     NavigationLink(destination: Text("Destination")) {
                                         Text("Search Results for \(text) in \(String(scopeSelection))")
                                     }
                                 })
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
