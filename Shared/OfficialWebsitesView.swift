//
//  OfficialWebsitesView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/21.
//

import SwiftUI
import BetterSafariView

struct OfficialWebsitesView: View {
    @State private var presentingSafariView1 = false
    @State private var presentingSafariView2 = false
    @State private var presentingSafariView3 = false
    @State private var presentingSafariView4 = false
    @State private var presentingSafariView5 = false
    
    var body: some View {
        Section(header: HStack {
            Text("Official Websites")
        }) {
            Button(action: {
                self.presentingSafariView1 = true
            }) {
                HStack {
                    Text("University of Oxford")
                        .foregroundColor(Color("Color1"))
                    Image(systemName: "arrow.up.right")
                        .font(Font.system(.caption))
                    Spacer()
                    
                    DisclosureIndicator()
                }
            }
            .safariView(isPresented: $presentingSafariView1) {
                SafariView(
                    url: URL(string: "https://www.ox.ac.uk")!,
                    configuration: SafariView.Configuration(
                        entersReaderIfAvailable: false,
                        barCollapsingEnabled: true
                    )
                )
                
            }
            
            Button(action: {
                self.presentingSafariView2 = true
            }) {
                HStack {
                    Text("University of Cambridge")
                        .foregroundColor(Color("Color1"))
                    Image(systemName: "arrow.up.right")
                        .font(Font.system(.caption))
                    Spacer()
                    
                    DisclosureIndicator()
                }
            }
            .safariView(isPresented: $presentingSafariView2) {
                SafariView(
                    url: URL(string: "https://www.cam.ac.uk")!,
                    configuration: SafariView.Configuration(
                        entersReaderIfAvailable: false,
                        barCollapsingEnabled: true
                    )
                )
                
            }
            
            Button(action: {
                self.presentingSafariView3 = true
            }) {
                HStack {
                    Text("Imperial College London")
                        .foregroundColor(Color("Color1"))
                    Image(systemName: "arrow.up.right")
                        .font(Font.system(.caption))
                    
                    Spacer()
                    
                    DisclosureIndicator()
                }
            }
            .safariView(isPresented: $presentingSafariView3) {
                SafariView(
                    url: URL(string: "https://www.imperial.ac.uk")!,
                    configuration: SafariView.Configuration(
                        entersReaderIfAvailable: false,
                        barCollapsingEnabled: true
                    )
                )
                
            }
            
            Button(action: {
                self.presentingSafariView4 = true
            }) {
                HStack {
                    Text("London School of Economics")
                        .foregroundColor(Color("Color1"))
                    Image(systemName: "arrow.up.right")
                        .font(Font.system(.caption))
                    Spacer()
                    
                    DisclosureIndicator()
                }
            }
            .safariView(isPresented: $presentingSafariView4) {
                SafariView(
                    url: URL(string: "https://www.lse.ac.uk")!,
                    configuration: SafariView.Configuration(
                        entersReaderIfAvailable: false,
                        barCollapsingEnabled: true
                    )
                )
                
            }
            
            Button(action: {
                self.presentingSafariView5 = true
            }) {
                HStack {
                    Text("University College London")
                        .foregroundColor(Color("Color1"))
                    Image(systemName: "arrow.up.right")
                        .font(Font.system(.caption))
                    Spacer()
                    
                    DisclosureIndicator()
                }
            }
            .safariView(isPresented: $presentingSafariView5) {
                SafariView(
                    url: URL(string: "https://www.ucl.ac.uk")!,
                    configuration: SafariView.Configuration(
                        entersReaderIfAvailable: false,
                        barCollapsingEnabled: true
                    )
                )
                
            }
            
            
        }
        .listSectionSeparator(.visible)
        .headerProminence(.increased)
        
    }
}

struct OfficialWebsitesView_Previews: PreviewProvider {
    static var previews: some View {
        OfficialWebsitesView()
    }
}
