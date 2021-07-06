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


struct ListView: View {
    let options: [ListOption]
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(options) { option in
                HStack(spacing: 15) {
                    Image(systemName: option.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 16)
                    Text(option.title)
                    Spacer()
                }
                .padding([.vertical, .trailing], 8)
                .padding(.leading, 20)
            }
            Spacer()
            
            Divider()
            HStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .background(Color.secondary.opacity(0.5))
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 3) {
                    Text("John Doe")
                        .fontWeight(.semibold)
                    Button(action: {}) {
                        HStack(spacing:2) {
                            Text("View profile")
                            Image(systemName: "chevron.right")
                        }
                        .font(.caption)
                        .foregroundColor(.accentColor)
                    }
                    .buttonStyle(BorderlessButtonStyle())
                }
            }
            .padding(.vertical, 10)
            .padding(.leading, 20)
        }
    }
}

struct MainView: View {
    var body: some View {
        Text("")
    }
}
