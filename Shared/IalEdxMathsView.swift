//
//  IalEdxMathsView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/2.
//

import SwiftUI

struct IalEdxMathsView: View {
    var body: some View {
        List {
            
            Section(header: Text("Jan/Feb")) {
                
                NavigationLink(destination: Text("quali")) {
                    Text("2021")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2020")
                }
                NavigationLink(destination: IalEdxMathsInnerView()) {
                    Text("2019")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2018")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2017")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2016")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2015")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2014")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2013")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2012")
                }
            }
            .headerProminence(.increased)
            
            Section(header: Text("May/Jun")) {
                
                Group {
                    NavigationLink(destination: Text("quali")) {
                        Text("2021")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2020")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2019")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2018")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2017")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2016")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2015")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2014")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2013")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2012")
                    }
                }
                .headerProminence(.increased)
               
                Group {
                    NavigationLink(destination: Text("quali")) {
                        Text("2011")
                    }
                    NavigationLink(destination: Text("quali")) {
                        Text("2009")
                    }
                    
                }
                .headerProminence(.increased)
                    
            }
            
            Section(header: Text("Oct/Nov")) {
                
                NavigationLink(destination: Text("quali")) {
                    Text("2021")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2020")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2019")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2018")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2017")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2016")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2015")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2014")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2013")
                }
                NavigationLink(destination: Text("quali")) {
                    Text("2012")
                }
            }
            .headerProminence(.increased)
            
            
        }
        //.listStyle(.sidebar)
        .listStyle(.plain)
        .navigationBarTitle("Maths", displayMode: .inline)
    }
}

struct IalEdxMathsView_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsView()
    }
}
