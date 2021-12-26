//
//  IalEdxMathsViewTest.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/21.
//

import SwiftUI

struct IalEdxMathsViewTest: View {
    let impactMed = UIImpactFeedbackGenerator(style: .medium)
    @State var selected = 2
    
    var body: some View {
        if selected == 7 {
            IalEdxMaths2019JanView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        
                        HStack {
                            Menu() {
                                ToolBarView()
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(4)
                                        
                                        Text("Winter").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                        Text("Winter").tag(9)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(10)
                                        Text("Summer").tag(11)
                                        Text("Winter").tag(12)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                        Text("Winter").tag(15)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(16)
                                        Text("Summer").tag(17)
                                        Text("Winter").tag(18)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(19)
                                        Text("Summer").tag(20)
                                        Text("Winter").tag(21)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(22)
                                        Text("Summer").tag(23)
                                        Text("Winter").tag(24)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                            }
                        }
                        
                    }
                }
        }
        
        if selected == 11 {
            IalEdxMaths2018JuneView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        HStack {
                            Menu() {
                                ToolBarView()
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                            
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                        // Text("Winter").tag(3)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(4)
                                        
                                        Text("Winter").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                        Text("Winter").tag(9)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(10)
                                        Text("Summer").tag(11)
                                        Text("Winter").tag(12)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                        Text("Winter").tag(15)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(16)
                                        Text("Summer").tag(17)
                                        Text("Winter").tag(18)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(19)
                                        Text("Summer").tag(20)
                                        Text("Winter").tag(21)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(22)
                                        Text("Summer").tag(23)
                                        Text("Winter").tag(24)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                            }
                        }
                        
                    }
                }
        }
        if selected == 10 {
            IalEdxMaths2018JanView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        
                        HStack {
                            Menu() {
                                ToolBarView()
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                            
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                        // Text("Winter").tag(3)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(4)
                                        
                                        Text("Winter").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                        Text("Winter").tag(9)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(10)
                                        Text("Summer").tag(11)
                                        Text("Winter").tag(12)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                        Text("Winter").tag(15)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(16)
                                        Text("Summer").tag(17)
                                        Text("Winter").tag(18)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(19)
                                        Text("Summer").tag(20)
                                        Text("Winter").tag(21)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(22)
                                        Text("Summer").tag(23)
                                        Text("Winter").tag(24)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                            }
                        }
                        
                    }
                }
        }
        if selected == 12 {
            IalEdxMaths2018OctView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        
                        HStack {
                            Menu() {
                                ToolBarView()
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                            
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                        // Text("Winter").tag(3)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(4)
                                        
                                        Text("Winter").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                        Text("Winter").tag(9)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(10)
                                        Text("Summer").tag(11)
                                        Text("Winter").tag(12)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                        Text("Winter").tag(15)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(16)
                                        Text("Summer").tag(17)
                                        Text("Winter").tag(18)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(19)
                                        Text("Summer").tag(20)
                                        Text("Winter").tag(21)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(22)
                                        Text("Summer").tag(23)
                                        Text("Winter").tag(24)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                            }
                        }
                        
                    }
                }
        }
        if selected == 8 {
            IalEdxMaths2019JuneView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        HStack {
                            Menu() {
                                ToolBarView()
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                            
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                        // Text("Winter").tag(3)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(4)
                                        
                                        Text("Winter").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                        Text("Winter").tag(9)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(10)
                                        Text("Summer").tag(11)
                                        Text("Winter").tag(12)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                        Text("Winter").tag(15)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(16)
                                        Text("Summer").tag(17)
                                        Text("Winter").tag(18)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(19)
                                        Text("Summer").tag(20)
                                        Text("Winter").tag(21)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(22)
                                        Text("Summer").tag(23)
                                        Text("Winter").tag(24)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                            }
                        }
                        
                    }
                }
        }
        if selected == 9 {
            IalEdxMaths2019OctView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        HStack {
                            Menu() {
                                ToolBarView()
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                            
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                        // Text("Winter").tag(3)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(4)
                                        
                                        Text("Winter").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                        Text("Winter").tag(9)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(10)
                                        Text("Summer").tag(11)
                                        Text("Winter").tag(12)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                        Text("Winter").tag(15)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(16)
                                        Text("Summer").tag(17)
                                        Text("Winter").tag(18)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(19)
                                        Text("Summer").tag(20)
                                        Text("Winter").tag(21)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(22)
                                        Text("Summer").tag(23)
                                        Text("Winter").tag(24)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                            }
                        }
                        
                    }
                }
        }
        if selected == 4 {
            IalEdxMaths2020JanView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        HStack {
                            Menu() {
                                ToolBarView()
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                            
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                        // Text("Winter").tag(3)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(4)
                                        
                                        Text("Winter").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                        Text("Winter").tag(9)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(10)
                                        Text("Summer").tag(11)
                                        Text("Winter").tag(12)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                        Text("Winter").tag(15)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(16)
                                        Text("Summer").tag(17)
                                        Text("Winter").tag(18)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(19)
                                        Text("Summer").tag(20)
                                        Text("Winter").tag(21)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(22)
                                        Text("Summer").tag(23)
                                        Text("Winter").tag(24)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                            }
                        }
                        
                    }
                }
        }
        if selected == 6 {
            IalEdxMaths2020OctView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        HStack {
                            Menu() {
                                ToolBarView()
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                            
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                        // Text("Winter").tag(3)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(4)
                                        
                                        Text("Winter").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                        Text("Winter").tag(9)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(10)
                                        Text("Summer").tag(11)
                                        Text("Winter").tag(12)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                        Text("Winter").tag(15)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(16)
                                        Text("Summer").tag(17)
                                        Text("Winter").tag(18)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(19)
                                        Text("Summer").tag(20)
                                        Text("Winter").tag(21)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(22)
                                        Text("Summer").tag(23)
                                        Text("Winter").tag(24)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                            }
                        }
                        
                    }
                }
        }
        if selected == 13 {
            IalEdxMaths2017JanView()
                .toolbar {
                    ToolbarItem(placement: .primaryAction){
                        HStack {
                            Menu() {
                                ToolBarView()
                            } label: {
                                Image(systemName: "ellipsis.circle")
                            }
                            
                            Menu(content: {
                                Menu("2021") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(1)
                                        Text("Summer").tag(2)
                                        // Text("Winter").tag(3)
                                    }
                                }
                                Menu("2020") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(4)
                                        
                                        Text("Winter").tag(6)
                                    }
                                }
                                Menu("2019") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(7)
                                        Text("Summer").tag(8)
                                        Text("Winter").tag(9)
                                    }
                                }
                                Menu("2018") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(10)
                                        Text("Summer").tag(11)
                                        Text("Winter").tag(12)
                                    }
                                }
                                Menu("2017") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(13)
                                        Text("Summer").tag(14)
                                        Text("Winter").tag(15)
                                    }
                                }
                                Menu("2016") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(16)
                                        Text("Summer").tag(17)
                                        Text("Winter").tag(18)
                                    }
                                }
                                Menu("2015") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(19)
                                        Text("Summer").tag(20)
                                        Text("Winter").tag(21)
                                    }
                                }
                                Menu("2014") {
                                    Picker(selection: $selected, label: Text("")){
                                        Text("Spring").tag(22)
                                        Text("Summer").tag(23)
                                        Text("Winter").tag(24)
                                    }
                                }
                            }) {
                                Image(systemName: "list.bullet.circle")
                            }
                        }
                        
                    }
                }
        }
        
        Group{
            
            if selected == 1 {
                IalEdxMaths2021JanView()
                    .toolbar {
                        ToolbarItem(placement: .primaryAction){
                            HStack {
                                Menu() {
                                    ToolBarView()
                                } label: {
                                    Image(systemName: "ellipsis.circle")
                                }
                                
                                Menu(content: {
                                    Menu("2021") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(1)
                                            Text("Summer").tag(2)
                                            // Text("Winter").tag(3)
                                        }
                                    }
                                    Menu("2020") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(4)
                                            
                                            Text("Winter").tag(6)
                                        }
                                    }
                                    Menu("2019") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(7)
                                            Text("Summer").tag(8)
                                            Text("Winter").tag(9)
                                        }
                                    }
                                    Menu("2018") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(10)
                                            Text("Summer").tag(11)
                                            Text("Winter").tag(12)
                                        }
                                    }
                                    Menu("2017") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(13)
                                            Text("Summer").tag(14)
                                            Text("Winter").tag(15)
                                        }
                                    }
                                    Menu("2016") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(16)
                                            Text("Summer").tag(17)
                                            Text("Winter").tag(18)
                                        }
                                    }
                                    Menu("2015") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(19)
                                            Text("Summer").tag(20)
                                            Text("Winter").tag(21)
                                        }
                                    }
                                    Menu("2014") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(22)
                                            Text("Summer").tag(23)
                                            Text("Winter").tag(24)
                                        }
                                    }
                                }) {
                                    Image(systemName: "list.bullet.circle")
                                }
                            }
                            
                        }
                    }
            }
            
            if selected == 2 {
                IalEdxMaths2021JuneView()
                    .toolbar {
                        ToolbarItem(placement: .primaryAction){
                            HStack {
                                Menu() {
                                    ToolBarView()
                                } label: {
                                    Image(systemName: "ellipsis.circle")
                                }
                                
                                Menu(content: {
                                    Menu("2021") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(1)
                                            Text("Summer").tag(2)
                                            // Text("Winter").tag(3)
                                        }
                                    }
                                    Menu("2020") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(4)
                                            
                                            Text("Winter").tag(6)
                                        }
                                    }
                                    Menu("2019") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(7)
                                            Text("Summer").tag(8)
                                            Text("Winter").tag(9)
                                        }
                                    }
                                    Menu("2018") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(10)
                                            Text("Summer").tag(11)
                                            Text("Winter").tag(12)
                                        }
                                    }
                                    Menu("2017") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(13)
                                            Text("Summer").tag(14)
                                            Text("Winter").tag(15)
                                        }
                                    }
                                    Menu("2016") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(16)
                                            Text("Summer").tag(17)
                                            Text("Winter").tag(18)
                                        }
                                    }
                                    Menu("2015") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(19)
                                            Text("Summer").tag(20)
                                            Text("Winter").tag(21)
                                        }
                                    }
                                    Menu("2014") {
                                        Picker(selection: $selected, label: Text("")){
                                            Text("Spring").tag(22)
                                            Text("Summer").tag(23)
                                            Text("Winter").tag(24)
                                        }
                                    }
                                }) {
                                    Image(systemName: "list.bullet.circle")
                                }
                            }
                            
                        }
                    }
            }
        }
    }
}

struct IalEdxMathsViewTest_Previews: PreviewProvider {
    static var previews: some View {
        IalEdxMathsViewTest()
    }
}
