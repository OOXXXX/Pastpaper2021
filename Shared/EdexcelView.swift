//
//  EdexcelView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/4.
//

import SwiftUI

struct EdexcelView: View {
    var body: some View {
        List {
            Section(header: Text("Level 2")) {
                NavigationLink(destination: Text("quali")) {
                    Text("International GCSEs")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("GCSEs")
                }
            }
            
            Section(header: Text("Level 3")) {
                NavigationLink(destination: Text("quali")) {
                    Text("AS & A levels")
                }
                NavigationLink(destination: EdxIALView()) {
                    Text("International AS & A levels")
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
