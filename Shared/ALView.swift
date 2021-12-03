//
//  ALView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/3.
//

import SwiftUI

struct ALView: View {
    var body: some View {
        List {
            Section(header: Text("CAIE")) {
                
                
                NavigationLink(destination: Text("quali")) {
                    Text("Art & Design (9479)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Biology (9700)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Business (9609)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Chemistry (9701)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Chinese (9715)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Computer Science (9608)")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Economics (9708)")
                }
                Group {
                    NavigationLink(destination: Text("quali")) {
                        Text("Further Mathematics (9231)")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Geography (9696)")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("History (9389)")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Mathematics (9709)")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Physics (9702)")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("Psychology (9990)")
                    }
                }
                
            }
            .headerProminence(.increased)
            
            Section(header: Text("Edexcel")) {
                
                
                NavigationLink(destination: Text("quali")) {
                    Text("Chinese")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Mathematics")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("Physics")
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

            }
            .headerProminence(.increased)
            
            
        }
        .listStyle(.plain)
        .navigationBarTitle("Advanced Level", displayMode: .inline)
    }
}

struct ALView_Previews: PreviewProvider {
    static var previews: some View {
        ALView()
    }
}
