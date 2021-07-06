//
//  ListView.swift
//  DCLearn
//
//  Created by Cédric Bahirwe on 06/07/2021.
//

import SwiftUI

struct ListView: View {
    let options: [ListOption]
    @Binding var currentSelection: ListSelection
    @Namespace private var animation
    
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
                .padding(8)
                .background(
                    ZStack {
                        
                        if option.type != currentSelection {
                            Color.clear
                        } else {
                            Color(.selectedContentBackgroundColor)
                                .matchedGeometryEffect(id: "background", in: animation)
                        }
                    }
                )
                .cornerRadius(5)
                .padding(.horizontal, 20)
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation(.spring()) {
                        currentSelection = option.type
                    }
                }
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
