//
//  IALView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/2.
//

import SwiftUI

struct IALView: View {
    var body: some View {
        
        
            List {
                Section(header: Text("Edexcel")) {
                    
                    NavigationLink(destination: Text("quali")) {
                        Text("Accounting")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Biology")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Business")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Chemistry")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Economics")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Geography")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("History")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Mathematics")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Physics")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Psychology")
                    }
                }
                .headerProminence(.increased)
                
                Section(header: Text("Edexcel")) {
                    
                    NavigationLink(destination: Text("quali")) {
                        Text("Accounting")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Biology")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Business")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Chemistry")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Economics")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Geography")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("History")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Mathematics")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Physics")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Psychology")
                    }
                }
                .headerProminence(.increased)
                
                
            }
            .listStyle(.inset)
            .navigationBarTitle("International AL", displayMode: .inline)
            //.navigationBarHidden(true)
            
        
    }
}

struct IALView_Previews: PreviewProvider {
    static var previews: some View {
        IALView()
    }
}
