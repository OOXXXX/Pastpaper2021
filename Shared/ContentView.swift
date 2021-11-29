//
//  ContentView.swift
//  Shared
//
//  Created by ZhuPinxi on 2021/11/26.
//

import SwiftUI

struct ContentView: View {
    let qualifications = ["IGCSE", "Advanced Level", "International Advanced Level", "OLevel", "IBDP"]
    let bureaus = ["CAIE", "Edexcel", "AQA"]
    let extraTests = ["Oxford admissions", "Cambridge admissions", "MAA AMC", "UKMT"]
    let websites = ["Oxford", "Cambridge", "Imperial London", "London School of Economics", "University College London"]
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            List {
                ForEach(searchResults1, id: \.self) { qualification in
                    NavigationLink(destination: Text(qualification)) {
                        Text(qualification)
                        
                    }
                    
                }

                Section(header: Text("Examination Bureau")) {
                    ForEach(searchResults2, id: \.self) { bureau in
                        NavigationLink(destination: Text(bureau)) {
                            Text(bureau)
                        }
                    }
                    
                }
                .listSectionSeparator(.visible)
                .headerProminence(.increased)
                Section(header: Text("Contest/Extra Tests")) {
                    ForEach(searchResults3, id: \.self) { extraTest in
                        NavigationLink(destination: Text(extraTest)) {
                            Text(extraTest)
                        }
                    }
                    
                }
                .listSectionSeparator(.visible)
                .headerProminence(.increased)
                Section(header: Text("Official Websites")) {
                    ForEach(searchResults4, id: \.self) { website in
                        NavigationLink(destination: Text(website)) {
                            Text(website)
                        }
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
            .searchable(text: $searchText, placement: .navigationBarDrawer)
//          .searchable(text: $searchText, placement: .navigationBarDrawer)
            
        }
        
        
    }
    var searchResults1: [String] {
        if searchText.isEmpty {
            return qualifications
        } else {
            return qualifications.filter {
                $0.localizedCaseInsensitiveContains(searchText)}
            
        }
    }

    var searchResults2: [String] {
        if searchText.isEmpty {
            return bureaus
        } else {
            return bureaus.filter { $0.localizedCaseInsensitiveContains(searchText)}
            
        }
    }
    
    var searchResults3: [String] {
        if searchText.isEmpty {
            return extraTests
        } else {
            return extraTests.filter { $0.localizedCaseInsensitiveContains(searchText.lowercased()) }
            
        }
    }
    
    var searchResults4: [String] {
        if searchText.isEmpty {
            return websites
        } else {
            return websites.filter { $0.localizedCaseInsensitiveContains(searchText.lowercased()) }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
