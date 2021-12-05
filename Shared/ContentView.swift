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
    @State private var showingAlert = false
    
    @State private var presentingSafariView1 = false
    @State private var presentingSafariView2 = false
    @State private var presentingSafariView3 = false
    @State private var presentingSafariView4 = false
    @State private var presentingSafariView5 = false
    @State private var showSafari = false
    
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
        NavigationView {
            List {
                
                NavigationLink(destination: ALView()) {
                    HStack {
                        Image(systemName: "a.square.fill")
                             .font(Font.system(.title))
                             .foregroundColor(.green)
                        Text("AS & A Levels")
                    }
                    .offset(x: -8)
                }
                NavigationLink(destination: IALView()) {
                    HStack {
                        Image(systemName: "i.square.fill")
                             .font(Font.system(.title))
                             .foregroundColor(.indigo)
                        Text("International AS & A Levels")
                    }
                    .offset(x: -8)
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
                
                Section(header: HStack {
                    Text("Official Websites")
               }) {
                    Button(action: {
                        self.presentingSafariView1 = true
                    }) {
                        HStack {
                            Text("University of Oxford")
                                .foregroundColor(Color("Color1"))
                            Image(systemName: "arrow.up.right")
                                .font(Font.system(.caption))
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView1) {
                        SafariView(
                            url: URL(string: "https://www.ox.ac.uk")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: false,
                                barCollapsingEnabled: true
                            )
                        )
                            
                   }
                    
                    Button(action: {
                        self.presentingSafariView2 = true
                    }) {
                        HStack {
                            Text("University of Cambridge")
                                .foregroundColor(Color("Color1"))
                            Image(systemName: "arrow.up.right")
                                .font(Font.system(.caption))
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView2) {
                        SafariView(
                            url: URL(string: "https://www.cam.ac.uk")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: false,
                                barCollapsingEnabled: true
                            )
                        )
                            
                   }
                    
                    Button(action: {
                        self.presentingSafariView3 = true
                    }) {
                        HStack {
                            Text("Imperial College London")
                                .foregroundColor(Color("Color1"))
                            Image(systemName: "arrow.up.right")
                                .font(Font.system(.caption))
                                
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView3) {
                        SafariView(
                            url: URL(string: "https://www.imperial.ac.uk")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: false,
                                barCollapsingEnabled: true
                            )
                        )
                            
                   }
                    
                    Button(action: {
                        self.presentingSafariView4 = true
                    }) {
                        HStack {
                            Text("London School of Economics")
                                .foregroundColor(Color("Color1"))
                            Image(systemName: "arrow.up.right")
                                .font(Font.system(.caption))
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView4) {
                        SafariView(
                            url: URL(string: "https://www.lse.ac.uk")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: false,
                                barCollapsingEnabled: true
                            )
                        )
                            
                   }
                    
                    Button(action: {
                        self.presentingSafariView5 = true
                    }) {
                        HStack {
                            Text("University College London")
                                .foregroundColor(Color("Color1"))
                            Image(systemName: "arrow.up.right")
                                .font(Font.system(.caption))
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView5) {
                        SafariView(
                            url: URL(string: "https://www.ucl.ac.uk")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: false,
                                barCollapsingEnabled: true
                            )
                        )
                            
                   }
                    
                    
                }
                .listSectionSeparator(.visible)
                .headerProminence(.increased)
                
            }
            //.listRowInsets(EdgeInsets())
            //.padding(.vertical, -10)
            .listStyle(.insetGrouped)
            .navigationBarTitle("Pastpaper", displayMode: .large)
            //.navigationBarHidden(false)
            .searchable(text: $searchText)
                        
        }
    }
    
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
