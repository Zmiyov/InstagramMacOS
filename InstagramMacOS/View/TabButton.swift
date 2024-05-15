//
//  TabButton.swift
//  InstagramMacOS
//
//  Created by Vladimir Pisarenko on 15.05.2024.
//

import SwiftUI

struct TabButton: View {
    
    var image: String
    var title: String
    
    @Binding var selected: String
    
    var animation: Namespace.ID
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                selected = title
            }
        }, label: {
            
            HStack(spacing: 10){
                
                Image(systemName: image)
                    .font(.system(size: 24))
                    .foregroundStyle(selected == title ? .orange : .gray)
                    .frame(width: 30)
                
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                Spacer(minLength: 0)
                
                //Current tab indicator
                
                ZStack{
                    
                    Capsule()
                        .fill(.clear)
                        .matchedGeometryEffect(id: "Tab", in: animation)
                    
                    if selected == title {
                        Capsule()
                            .fill(.orange)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                    }
                }
                .frame(width: 3, height: 25)
                
            }
            .padding(.leading)
            .padding(.top, 5)
            .contentShape(Rectangle())
        })
        .buttonStyle(PlainButtonStyle())
    }
}
