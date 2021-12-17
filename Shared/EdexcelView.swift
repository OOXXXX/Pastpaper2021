//
//  EdexcelView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/4.
//

import SwiftUI

struct EdexcelView: View {
    @State private var showingAlert = false
    
    var body: some View {
        List {
            Section(header: Text("Level 1 & 2")) {
                Button(action: {
                    self.showingAlert = true
                }) {
                    HStack {
                        Text("International GCSEs")
                            .foregroundColor(Color("Color2"))
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
                        Text("GCSEs")
                            .foregroundColor(Color("Color2"))
                        Spacer()
                        DisclosureIndicator()
                    }
                    .alert("Still under development 🚴", isPresented: $showingAlert) {
                        
                    }
                    
                }
            }
            
            Section(header: Text("Level 3")) {
                Button(action: {
                    self.showingAlert = true
                }) {
                    HStack {
                        Text("AS & A Levels")
                            .foregroundColor(Color("Color2"))
                        Spacer()
                        DisclosureIndicator()
                    }
                    .alert("Still under development 🚴", isPresented: $showingAlert) {
                        
                    }
                    
                }
                
                NavigationLink(destination: EdxIALView()) {
                    Text("International AS & A Levels")
                }
            }
            
        }
        .listStyle(.plain)
        .navigationBarTitle("Edexcel", displayMode: .inline)
    }
}

struct EdexcelView_Previews: PreviewProvider {
    static var previews: some View {
        EdexcelView()
    }
}
