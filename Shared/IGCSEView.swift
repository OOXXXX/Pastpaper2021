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
                    TitleLabel("Biology", subtitle: "0610")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Chemistry (0620)")
                    TitleLabel("Chemistry", subtitle: "0620")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Computer Science (0478)")
                    TitleLabel("Computer Science", subtitle: "0478")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Economics (0455)")
                    TitleLabel("Economics", subtitle: "0455")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("English as Second Language (0511)")
                    TitleLabel("English as Second Language", subtitle: "0511")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("English as First Language (0500)")
                    TitleLabel("English as First Language", subtitle: "0500")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Mathematics (0580)")
                    TitleLabel("Mathematics", subtitle: "0580")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Additional Mathematics (0606)")
                    TitleLabel("Additional Mathematics", subtitle: "0606")
                }
            }
            .headerProminence(.increased)
            
            
        }
        .listStyle(.insetGrouped)
        .navigationBarTitle("IGCSE", displayMode: .inline)
    }
}

struct CaieIGCSEView: View {
    var body: some View {
        List {
              NavigationLink(destination: Text("quali")) {
                    TitleLabel("Biology", subtitle: "0610")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Chemistry (0620)")
                    TitleLabel("Chemistry", subtitle: "0620")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Computer Science (0478)")
                    TitleLabel("Computer Science", subtitle: "0478")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Economics (0455)")
                    TitleLabel("Economics", subtitle: "0455")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("English as Second Language (0511)")
                    TitleLabel("English as Second Language", subtitle: "0511")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("English as First Language (0500)")
                    TitleLabel("English as First Language", subtitle: "0500")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Mathematics (0580)")
                    TitleLabel("Mathematics", subtitle: "0580")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Additional Mathematics (0606)")
                    TitleLabel("Additional Mathematics", subtitle: "0606")
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
