//
//  AqaView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/4.
//

import SwiftUI

struct AqaView: View {
    var body: some View {
        List {
            NavigationLink(destination: Text("quali")) {
                Text("AS & A levels")
            }
            NavigationLink(destination: Text("quali")) {
                Text("GCSEs")
            }
            NavigationLink(destination: Text("quali")) {
                Text("International AS & A levels")
            }
            NavigationLink(destination: Text("quali")) {
                Text("International GCSEs")
            }
        }
        .listStyle(.plain)
        .navigationBarTitle("AQA", displayMode: .inline)
    }
}

struct AqaView_Previews: PreviewProvider {
    static var previews: some View {
        AqaView()
    }
}
