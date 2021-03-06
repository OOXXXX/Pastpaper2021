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
                        Text("Business")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Economics")
                    }
                    NavigationLink(destination: IalEdxMathsYearView()) {
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
                
                Section(header: Text("AQA")) {
                    
                    
                    NavigationLink(destination: Text("quali")) {
                        Text("Biology")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Chemistry")
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
            .listStyle(.insetGrouped)
            .navigationBarTitle("Subjects", displayMode: .inline)
            
    }
}

struct EdxIALView: View {
    var body: some View {
         List {
                    NavigationLink(destination: Text("quali")) {
                        Text("Business")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Economics")
                    }
                    NavigationLink(destination: IalEdxMathsViewTest()) {
                        Text("Mathematics")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Physics")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Psychology")
                    }
               
            }
            .listStyle(.plain)
            .navigationBarTitle("Subjects", displayMode: .inline)
            
    }
}

struct IALView_Previews: PreviewProvider {
    static var previews: some View {
        IALView()
    }
}
