//
//  ContentView.swift
//  Shared
//
//  Created by ZhuPinxi on 2021/11/26.
//

import SwiftUI
import BetterSafariView

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
    // Search string to use in the search bar
    @State var searchString = ""
    
    // Search action. Called when search key pressed on keyboard
    func search() {
    }
    
    // Cancel action. Called when cancel button of search bar pressed
    func cancel() {
    }
    
    @State private var showingAlert = false
    
    @State private var presentingSafariView1 = false
    @State private var presentingSafariView2 = false
    @State private var presentingSafariView3 = false
    @State private var presentingSafariView4 = false
    @State private var presentingSafariView5 = false
    @State private var showSafari = false
    @State private var showingSettingSheet = false
    @State private var showingInfoSheet = false
    
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
    @State private var searchText = ""
    
    var body: some View {
        SearchNavigation(text: $searchString, search: search, cancel: cancel) {
        //NavigationView {
            List {
                QualiView()

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
            .navigationBarTitle("PaperHub", displayMode: .large)
            //.navigationBarHidden(false)
            .toolbar(content: {
                ToolbarItem(placement: .primaryAction){
                    HStack {
                        Button {
                            
                        }label: {
                            Image(systemName: "ellipsis.circle")
                                //.foregroundColor(Color.orange)
                            //Image(systemName: "gear")
                        }
                        
                        Button {
                            showingSettingSheet.toggle()
                        }label: {
                            Image(systemName: "gearshape")
                                //.foregroundColor(Color.orange)
                            //Image(systemName: "gear")
                        }
                        .sheet(isPresented: $showingSettingSheet) {
                            SettingView()
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
            //.padding(.top, -20)
        }
        .edgesIgnoringSafeArea(.all)
        //.navigationViewStyle(.stack)
        
    }
    
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
