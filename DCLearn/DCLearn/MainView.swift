//
//  MainView.swift
//  DCLearn
//
//  Created by Cédric Bahirwe on 06/07/2021.
//

import SwiftUI

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
                ForEach(videoThumbnails) { item in
                    VStack {
                    Image(item.image)
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        Text(item.title)
                            .bold()
                    }
                }
                
            }
            Spacer()
        }
    }
}
