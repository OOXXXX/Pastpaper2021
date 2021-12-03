//
//  IGCSEView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/3.
//

import SwiftUI

struct IGCSEView: View {
    var body: some View {
        List {
            Section(header: Text("CAIE")) {
                
                
                NavigationLink(destination: Text("quali")) {
                    Text("Biology (0610)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Chemistry (0620)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Computer Science (0478)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("English as Second Language (0511)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("English as First Language (0500)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Mathematics (0580)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Additional MatheMatics (0606)")
                }
            }
            .headerProminence(.increased)
            
            
        }
        .listStyle(.plain)
        .navigationBarTitle("IGCSE", displayMode: .inline)
    }
}

struct IGCSEView_Previews: PreviewProvider {
    static var previews: some View {
        IGCSEView()
    }
}
