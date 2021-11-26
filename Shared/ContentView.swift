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
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Qualifications")) {
                    ForEach(searchResults1, id: \.self) { qualification in
                        NavigationLink(destination: Text(qualification)) {
                            Text(qualification)
                        }
                    }
                    
                }
                .headerProminence(.increased)
                Section(header: Text("Examination Bureau")) {
                    ForEach(searchResults2, id: \.self) { bureau in
                        NavigationLink(destination: Text(bureau)) {
                            Text(bureau)
                        }
                    }
                    
                }
                .headerProminence(.increased)
                Section(header: Text("Contest/Extra Tests")) {
                    ForEach(searchResults3, id: \.self) { extraTest in
                        NavigationLink(destination: Text(extraTest)) {
                            Text(extraTest)
                        }
                    }
                    
                }
                .headerProminence(.increased)
            }
            .padding(.vertical, -10)
            .listStyle(.automatic)
            .navigationBarTitle("Pastpaper", displayMode: .large)
            .searchable(text: $searchText, placement: .navigationBarDrawer)
//          .searchable(text: $searchText, placement: .navigationBarDrawer)
            
        }
        
    }
    var searchResults1: [String] {
        if searchText.isEmpty {
            return qualifications
        } else {
            return qualifications.filter { $0.contains(searchText) }
            
        }
    }

    var searchResults2: [String] {
        if searchText.isEmpty {
            return bureaus
        } else {
            return bureaus.filter { $0.contains(searchText) }
            
        }
    }
    
    var searchResults3: [String] {
        if searchText.isEmpty {
            return extraTests
        } else {
            return extraTests.filter { $0.contains(searchText) }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
