//
//  VideoModel.swift
//  DCLearn
//
//  Created by Cédric Bahirwe on 06/07/2021.
//

import Foundation

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
//        .init(title: "Node Js", image: "nodejs"),
        .init(title: "Swift", image: "swift"),
//        .init(title: "Web Dev", image: "web")
        
        
    ]
}
