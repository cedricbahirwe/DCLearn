//
//  ContentView.swift
//  DCLearn
//
//  Created by Cédric Bahirwe on 06/07/2021.
//

import SwiftUI


struct ListOption: Hashable {
    let image: String
    let tile: String
}
struct ContentView: View {
    
    private let listOptions: [ListOption]  = [
        .init(image: "house", tile: "Home"),
        .init(image: "arrow.down.app", tile: "Downloaded"),
        .init(image: "phone.circle", tile: "Contact"),
        .init(image: "gear", tile: "Settings"),
        .init(image: "info.circle", tile: "About")
    ]
    var body: some View {
        NavigationView {
            ListView()
            
            MainView()
        }
        .frame(minWidth: 600, minHeight: 400)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct ListView: View {
    var body: some View {
        Text("")
    }
}

struct MainView: View {
    var body: some View {
        Text("")
    }
}
