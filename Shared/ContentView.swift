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
    
    @State private var presentingSafariView = false
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
                
                NavigationLink(destination: IGCSEView()) {
                    HStack {
                        Image(systemName: "i.square.fill")
                             .font(Font.system(.title))
                             .foregroundColor(.blue)
                        Text("IGCSE")
                    }
                    .offset(x: -8)
                }
                NavigationLink(destination: ALView()) {
                    HStack {
                        Image(systemName: "a.square.fill")
                             .font(Font.system(.title))
                             .foregroundColor(.green)
                        Text("Advanced Level")
                    }
                    .offset(x: -8)
                }
                NavigationLink(destination: IALView()) {
                    HStack {
                        Image(systemName: "i.square.fill")
                             .font(Font.system(.title))
                             .foregroundColor(.indigo)
                        Text("International AL")
                    }
                    .offset(x: -8)
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
                NavigationLink(destination: Text("quali")) {
                    HStack {
                        Image(systemName: "i.square.fill")
                             .font(Font.system(.title))
                             .foregroundColor(.yellow)
                        Text("IBDP")
                    }
                    .offset(x: -8)
                }

                

                Section(header: Text("Examination Bureau")) {
                    ForEach(examList, id: \.name) { exam in
                        NavigationLink(destination: Text("quali")) {
                            HStack {
                                Image(systemName: exam.image)
                                     .font(Font.system(.title))
                                     .foregroundColor(exam.color)
                                Text(exam.name)
                               
                              }
                            .offset(x: -8)
                        }
                        
                    }
                    
                }
                .listSectionSeparator(.visible)
                .headerProminence(.increased)
                Section(header: Text("Contest/Extra Tests")) {
                    ForEach(contestList, id: \.name) { contest in
                        NavigationLink(destination: Text("quali")) {
                            HStack {
                                Image(systemName: contest.image)
                                     .font(Font.system(.title))
                                     .foregroundColor(contest.color)
                                Text(contest.name)
                               
                              }
                            .offset(x: -8)
                        }
                        
                    }
                    
                }
                .listSectionSeparator(.visible)
                .headerProminence(.increased)
                
                Section(header: HStack {
                    Text("Official Websites")
//                    Image(systemName: "link")
//                        .foregroundColor(.blue)
//                        .font(Font.system(.body))
                }) {
                    Button(action: {
                        self.presentingSafariView = true
                    }) {
                        HStack {
                            Text("Oxford")
                                //.foregroundColor(.black)
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView) {
                        SafariView(
                            url: URL(string: "https://www.ox.ac.uk")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: false,
                                barCollapsingEnabled: true
                            )
                        )
                            
                   }
                    
                    Button(action: {
                        self.presentingSafariView = true
                    }) {
                        HStack {
                            Text("Cambridge")
                            
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView) {
                        SafariView(
                            url: URL(string: "https://www.cam.ac.uk")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: false,
                                barCollapsingEnabled: true
                            )
                        )
                            
                   }
                    
                    Button(action: {
                        self.presentingSafariView = true
                    }) {
                        HStack {
                            Text("Imperial London")
                            
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView) {
                        SafariView(
                            url: URL(string: "https://www.imperial.ac.uk")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: false,
                                barCollapsingEnabled: true
                            )
                        )
                            
                   }
                    
                    Button(action: {
                        self.presentingSafariView = true
                    }) {
                        HStack {
                            Text("London School of Economics")
                            
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView) {
                        SafariView(
                            url: URL(string: "https://www.lse.ac.uk")!,
                            configuration: SafariView.Configuration(
                                entersReaderIfAvailable: false,
                                barCollapsingEnabled: true
                            )
                        )
                            
                   }
                    
                    Button(action: {
                        self.presentingSafariView = true
                    }) {
                        HStack {
                            Text("University College London")
                            
                            Spacer()
                            
                            DisclosureIndicator()
                        }
                    }
                    .safariView(isPresented: $presentingSafariView) {
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
