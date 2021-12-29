//
//  SettingView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/22.
//

import SwiftUI
import WebKit
import Foundation
import UIKit

struct SettingView: View {
    @State private var showFeedback = true
    @State private var showingAlert = false
    @Binding var showTraditionStack: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    Section(header: Text("PREFERENCE")) {
                        NavigationLink(destination: EmptyView()) {
                            Text("Appearence")
                        }
                        NavigationLink(destination: EmptyView()) {
                            Text("Color & Icon")
                        }
                        Toggle("Taptic Engine Feedback", isOn: $showFeedback)
                        
                        Toggle("Simple Stack Mode", isOn: $showTraditionStack)
                    }
                    
                    Section(header: Text("MISC")) {
                        Button("Clear Cached Data") {
                            self.showingAlert = true
                            
                            deleteCache()
                        }.alert("All cache being removed", isPresented: $showingAlert) {
                            
                        }
                        NavigationLink(destination: EmptyView()) {
                            Text("Rate PaperHub")
                        }
                        NavigationLink(destination: EmptyView()) {
                            Text("Share with Friends")
                        }
                        NavigationLink(destination: EmptyView()) {
                            Text("About PaperHub")
                        }
                    }
                    Section(header: Text("FEEDBACK")) {
                        NavigationLink(destination: EmptyView()) {
                            Text("Email")
                        }
                        NavigationLink(destination: EmptyView()) {
                            Text("Twitter")
                        }
                    }
                }
                .listStyle(.grouped)
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.inline)
                
                Text("Version 0.0.1(101)\n © 2021 Patrick Zhu")
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.secondary)
                    .padding(.bottom, 5)
                    .font(.footnote)
            }
            .background(Color("Color3"))            
            
        }
    }
    private func deleteCache(){
        if #available(iOS 9.0, *) {
            let websiteDataTypes = NSSet(array: [WKWebsiteDataTypeDiskCache, WKWebsiteDataTypeMemoryCache])
            let date = NSDate(timeIntervalSince1970: 0)
            WKWebsiteDataStore.default().removeData(ofTypes: websiteDataTypes as! Set<String>, modifiedSince: date as Date, completionHandler:{ })
        } else {
            var libraryPath = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.libraryDirectory, FileManager.SearchPathDomainMask.userDomainMask, false).first!
            libraryPath += "/Cookies"
            
            do {
                try FileManager.default.removeItem(atPath: libraryPath)
            } catch {
                print("error")
            }
            URLCache.shared.removeAllCachedResponses()
        }
    }
}


