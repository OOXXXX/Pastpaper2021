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
                    //Text("Art & Design (9479)")
                    TitleLabel("Art & Design", subtitle: "9479")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Biology (9700)")
                    TitleLabel("Biology", subtitle: "9700")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Business (9609)")
                    TitleLabel("Business", subtitle: "9609")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Chemistry (9701)")
                    TitleLabel("Chemistry", subtitle: "9701")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Chinese (9715)")
                    TitleLabel("Chinese", subtitle: "9715")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Computer Science (9608)")
                    TitleLabel("Computer Science", subtitle: "9608")
                }
                NavigationLink(destination: Text("quali")) {
                    //Text("Economics (9708)")
                    TitleLabel("Economics", subtitle: "9708")
                }
                Group {
                    NavigationLink(destination: Text("quali")) {
                        //Text("Further Mathematics (9231)")
                        TitleLabel("Further Mathematics", subtitle: "9231")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("Geography (9696)")
                        TitleLabel("Geography", subtitle: "9696")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("History (9389)")
                        TitleLabel("History", subtitle: "9389")
                    }
                    NavigationLink(destination: AlCaieMathsYearView()) {
                        //Text("Mathematics (9709)")
                        TitleLabel("Mathematics", subtitle: "9709")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("Physics (9702)")
                        TitleLabel("Physics", subtitle: "9702")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("Psychology (9990)")
                        TitleLabel("Psychology", subtitle: "9990")
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
        .listStyle(.insetGrouped)
        .navigationBarTitle("AS & A Levels", displayMode: .inline)
    }
}

struct CaieALView: View {
        var body: some View {
            List {
                Section(header: Text("Select Subject")) {
                    NavigationLink(destination: Text("quali")) {
                        //Text("Art & Design (9479)")
                        TitleLabel("Art & Design", subtitle: "9479")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("Biology (9700)")
                        TitleLabel("Biology", subtitle: "9700")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("Business (9609)")
                        TitleLabel("Business", subtitle: "9609")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("Chemistry (9701)")
                        TitleLabel("Chemistry", subtitle: "9701")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("Chinese (9715)")
                        TitleLabel("Chinese", subtitle: "9715")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("Computer Science (9608)")
                        TitleLabel("Computer Science", subtitle: "9608")
                    }
                    NavigationLink(destination: Text("quali")) {
                        //Text("Economics (9708)")
                        TitleLabel("Economics", subtitle: "9708")
                    }
                    Group {
                        NavigationLink(destination: Text("quali")) {
                            //Text("Further Mathematics (9231)")
                            TitleLabel("Further Mathematics", subtitle: "9231")
                        }
                        NavigationLink(destination: Text("quali")) {
                            //Text("Geography (9696)")
                            TitleLabel("Geography", subtitle: "9696")
                        }
                        NavigationLink(destination: Text("quali")) {
                            //Text("History (9389)")
                            TitleLabel("History", subtitle: "9389")
                        }
                        NavigationLink(destination: AlCaieMathsYearView()) {
                            //Text("Mathematics (9709)")
                            TitleLabel("Mathematics", subtitle: "9709")
                        }
                        NavigationLink(destination: Text("quali")) {
                            //Text("Physics (9702)")
                            TitleLabel("Physics", subtitle: "9702")
                        }
                        NavigationLink(destination: Text("quali")) {
                            //Text("Psychology (9990)")
                            TitleLabel("Psychology", subtitle: "9990")
                        }
                    }
            }
                }
                
        .listStyle(.plain)
        .navigationBarTitle("AS & A Levels", displayMode: .inline)
    }
}

struct EdxALView: View {
        var body: some View {
            List {
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
        .listStyle(.plain)
        .navigationBarTitle("AS & A Levels", displayMode: .inline)
    }
}

struct AqaALView: View {
        var body: some View {
            List {
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
        .listStyle(.plain)
        .navigationBarTitle("AS & A Levels", displayMode: .inline)
    }
}

struct ALView_Previews: PreviewProvider {
    static var previews: some View {
        ALView()
    }
}
