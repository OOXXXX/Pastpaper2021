//
//  OLView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/3.
//

import SwiftUI

struct OLView: View {
    var body: some View {
        List {
            Section(header: Text("CAIE")) {
                
                
                NavigationLink(destination: Text("quali")) {
                    //Text("Biology (5090)")
                    TitleLabel("Biology", subtitle: "5090")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Chemistry (5070)")
                    TitleLabel("Chemistry", subtitle: "5070")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Computer Science (2210)")
                    TitleLabel("Computer Science", subtitle: "2210")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Economics (2281)")
                    TitleLabel("Economics", subtitle: "2281")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("English Language (1123)")
                    TitleLabel("English Language", subtitle: "1123")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Geography (2217)")
                    TitleLabel("Geography", subtitle: "2217")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Mathematics D (4024)")
                    TitleLabel("Mathematics D", subtitle: "4024")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Physcis (5054)")
                    TitleLabel("Physcis", subtitle: "5054")
                }
            }
            .headerProminence(.increased)
            
            
        }
        .listStyle(.plain)
        .navigationBarTitle("O Level", displayMode: .inline)
    }
}

struct OLView_Previews: PreviewProvider {
    static var previews: some View {
        OLView()
    }
}
