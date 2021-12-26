//
//  ToolBarView.swift
//  Pastpaper2021
//
//  Created by ZhuPinxi on 2021/12/26.
//

import SwiftUI

struct ToolBarView: View {
    var body: some View {
        NavigationLink(destination: EmptyView()) {
            Label("Show data booklet", systemImage: "list.bullet.rectangle.portrait")
        }
        NavigationLink(destination: EmptyView()) {
            Label("Show syllabus", systemImage: "character.book.closed")
        }
        NavigationLink(destination: EmptyView()) {
            Label("Show course resources", systemImage: "bookmark")
        }
        Section(header: Text("Secondary actions")) {
            NavigationLink(destination: EmptyView()) {
                Label("Paper request", systemImage: "arrowshape.turn.up.right")
            }
        }
    }
}

struct ToolBarView_Previews: PreviewProvider {
    static var previews: some View {
        ToolBarView()
    }
}
