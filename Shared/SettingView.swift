//
//  SettingView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/22.
//

import SwiftUI

struct SettingView: View {
    @State private var showFeedback = true
    @State private var showTraditional = false
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("PREFERENCE")) {
                    NavigationLink(destination: EmptyView()) {
                        Text("Appearence")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Text("Color & Icon")
                    }
                    Toggle("Taptic Engine Feedback", isOn: $showFeedback)
                    
                    Toggle("Traditional Mode", isOn: $showTraditional)
                }
                
                Section(header: Text("MISC")) {
                    NavigationLink(destination: EmptyView()) {
                        Text("Clear Cached Data")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Text("Rate PaperHub")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Text("Share with Friends")
                    }
                }
                Section(header: Text("FEEDBACK")) {
                    NavigationLink(destination: EmptyView()) {
                        Text("Email")
                    }
                    NavigationLink(destination: EmptyView()) {
                        Text("Twitter")
                    }
                }
            }
            .listStyle(.grouped)
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(content: {
                ToolbarItem(placement: .primaryAction){
                    Button {
                        
                    }
                label: {
                    Image(systemName: "info.circle")
                }
                }
            })
        }        
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
