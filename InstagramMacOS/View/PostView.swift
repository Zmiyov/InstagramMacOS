//
//  PostView.swift
//  InstagramMacOS
//
//  Created by Vladimir Pisarenko on 15.05.2024.
//

import SwiftUI

struct PostView: View {
    
    var image: String
    
    var body: some View {
        GeometryReader { proxy in
            VStack {
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: proxy.frame(in: .global).width, height: 250)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                HStack{
                    
                    Image(.pic)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(5)
                        .background(Circle().stroke(gradient, lineWidth: 2))
                        .clipShape(Circle())
                    
                    Text("iJustine")
                        .foregroundStyle(.white)
                    
                    Spacer(minLength: 0)
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label(
                            title: { Text("1.2K") },
                            icon: { Image(systemName: "suit.heart") }
                        )
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Label(
                            title: { Text("556") },
                            icon: { Image(systemName: "message") }
                        )
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal)
            }
        }
        .frame(height: 300 )
    }
}

#Preview {
    ContentView()
}
