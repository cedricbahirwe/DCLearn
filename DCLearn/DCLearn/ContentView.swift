//
//  ContentView.swift
//  DCLearn
//
//  Created by Cédric Bahirwe on 06/07/2021.
//

import SwiftUI


enum ListSelection { case  home, downloads, contact, settings, about }
struct ListOption: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let type: ListSelection
}
struct ContentView: View {
    
    private let listOptions: [ListOption]  = [
        .init(image: "house", title: "Home", type: .home),
        .init(image: "arrow.down.app", title: "Downloaded", type: .downloads),
        .init(image: "phone.circle", title: "Contact", type: .contact),
        .init(image: "gear", title: "Settings", type: .settings),
        .init(image: "info.circle", title: "About", type: .about)
    ]
    
    @State private var currentOption: ListSelection = .home
    var body: some View {
        NavigationView {
            ListView(options: listOptions, currentSelection: $currentOption)

            switch currentOption {
            case .home:
                MainView()
            default:
                Text("About other studds")
            }
        }
        .frame(minWidth: 600, minHeight: 400)
        .navigationViewStyle(DoubleColumnNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
