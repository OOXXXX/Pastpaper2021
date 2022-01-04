//
//  ContentView.swift
//  Shared
//
//  Created by ZhuPinxi on 2021/11/26.
//

import SwiftUI
import NavigationSearchBar

struct ContentView: View {
    @State var text: String = ""
    @State var scopeSelection: Int = 0
    @State private var showingAlert = false
    @State private var showingSettingSheet = false
    @State private var showingInfoSheet = false
    @State private var showTraditionStack1 = false
    @AppStorage("showTraditionStack") var showTraditionStack: Bool = false
   
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
            }
            //.listRowInsets(EdgeInsets())
            //.padding(.vertical, -10)
            .listStyle(.automatic)
            //.searchable(text: $searchText, placement: .navigationBarDrawer)
            .navigationBarTitle("PaperHub", displayMode: .large)
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
