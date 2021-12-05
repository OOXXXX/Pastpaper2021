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
//                        Image(systemName: "i.square")
//                             .font(Font.system(.title))
//                             .foregroundColor(.blue)
                        Text("International GCSE")
                    }
                    //.offset(x: -8)
                }
                NavigationLink(destination: CaieOLView()) {
                    HStack {
//                        Image(systemName: "o.square")
//                             .font(Font.system(.title))
//                             .foregroundColor(.purple)
                        Text("O Level")
                    }
                    //.offset(x: -8)
                }
                
            }
            
            Section(header: Text("Cambridge Advanced")) {
                NavigationLink(destination: CaieALView()) {
                    HStack {
//                        Image(systemName: "a.square")
//                             .font(Font.system(.title))
//                             .foregroundColor(.green)
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
        .navigationBarTitle("CAIE", displayMode: .inline)
    }
}

struct CAIEView_Previews: PreviewProvider {
    static var previews: some View {
        CAIEView()
    }
}
