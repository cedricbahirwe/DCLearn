//
//  ContentView.swift
//  DCLearn
//
//  Created by Cédric Bahirwe on 06/07/2021.
//

import SwiftUI

struct ListOption: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}
struct ContentView: View {
    
    private let listOptions: [ListOption]  = [
        .init(image: "house", title: "Home"),
        .init(image: "arrow.down.app", title: "Downloaded"),
        .init(image: "phone.circle", title: "Contact"),
        .init(image: "gear", title: "Settings"),
        .init(image: "info.circle", title: "About")
    ]
    var body: some View {
        NavigationView {
            ListView(options: listOptions)
            
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


struct MainView: View {
    let columns: [GridItem] = [
        .init(.flexible()), .init(.flexible()), .init(.flexible())
    ]
    let videoThumbnails = Video.samples
    var body: some View {
        VStack {
            Image("header")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            LazyVGrid(columns: columns) {
//                ForEac
                
            }
            Spacer()
        }
    }
}


struct Video: Identifiable {
    let id = UUID()
    let title: String
    let description: String? = nil
    let rating: Double = 0.0
    let image: String
    
    
    static let samples: [Video]  = [
        .init(title: "SwiftUI", image: "swiftui"),
        .init(title: "Kotlin", image: "kotlin"),
        .init(title: "Front-End", image: "reactjs"),
        .init(title: "Flutter", image: "flutter"),
        .init(title: "ML Js", image: "mljs"),
        .init(title: "Node Js", image: "nodejs"),
        .init(title: "Swift", image: "swift"),
        .init(title: "Web Dev", image: "web")
        
        
    ]
}
