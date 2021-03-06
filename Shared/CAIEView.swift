//
//  CAIEView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/4.
//

import SwiftUI

struct CAIEView: View {
    @State private var showingAlert = false

    var body: some View {
        List {
            Section(header: Text("Cambridge Upper Secondary")) {
                NavigationLink(destination: CaieIGCSEView()) {
                    HStack {
                       Text("International GCSE")
                    }
                }
                NavigationLink(destination: CaieOLView()) {
                    HStack {
                       Text("O Level")
                    }
                }
                
            }
            
            Section(header: Text("Cambridge Advanced")) {
                NavigationLink(destination: CaieALView()) {
                    HStack {
                        Text("AS & A Levels")
                    }
                    //.offset(x: -8)
                }
                Button(action: {
                    self.showingAlert = true
                }) {
                    HStack {
                            Text("Pre-U")
                                .foregroundColor(Color("Color2"))
                       Spacer()
                       DisclosureIndicator()
                    }
                    .alert("Still under development 🚴", isPresented: $showingAlert) {
                                
                    }
                    
                }
                
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("Qualifications", displayMode: .inline)
    }
}
