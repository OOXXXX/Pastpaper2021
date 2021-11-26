//
//  ContentView.swift
//  Shared
//
//  Created by ZhuPinxi on 2021/11/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Qualifications")) {
                    TaskRow()
                    TaskRow()
                    TaskRow()
                    TaskRow()
                    TaskRow()
                }
                .headerProminence(.increased)

                Section(header: Text("Examination Bureau")) {
                    TaskRow()
                    TaskRow()
                    TaskRow()
                }
                .headerProminence(.increased)
                
                Section(header: Text("Contest/Extra Tests")) {
                    TaskRow()
                    TaskRow()
                    TaskRow()
                    TaskRow()
                }
                .headerProminence(.increased)
            }
            .listStyle(.automatic)
            .navigationTitle("Pastpaper")
        }
        
    }
}

struct TaskRow: View {
    var body: some View {
        Text("Task data goes here")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
