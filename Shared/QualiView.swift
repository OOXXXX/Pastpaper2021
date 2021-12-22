//
//  QualiView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/22.
//

import SwiftUI

struct QualiView: View {
    @State private var showingAlert = false
    var body: some View {
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
        }
        .headerProminence(.increased)
        
    }
}

struct QualiView_Previews: PreviewProvider {
    static var previews: some View {
        QualiView()
    }
}
