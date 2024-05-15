//
//  SideView.swift
//  InstagramMacOS
//
//  Created by Vladimir Pisarenko on 15.05.2024.
//

import SwiftUI

struct SideView: View {
    
    var screen = NSScreen.main!.visibleFrame
    @State var selecteed = "Explore"
    @Namespace var animation
     
    var body: some View {
        
        VStack(spacing: 15){
            
            HStack(spacing: 10){
                
                Image(.instagram)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                
                Text("Instagram")
                    .font(.custom("billabong", size: 30))
                
                Spacer()
            }
            .padding()
            .padding(.top, 20)
            
            Image(.pic)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 65, height: 65)
                .clipShape(Circle())
                .padding(5)
                .background(Circle().stroke(gradient, lineWidth: 2.0))
                .clipShape(Circle())
                .padding(.top)
            
            Text("IJustine")
                .font(.title)
                .foregroundStyle(.white)
            
            Text("@ijustine")
                .foregroundStyle(.gray)
            
            //Followers...
            
            HStack{
                
                VStack(spacing: 8){
                   
                    Text("1.2K")
                        .foregroundStyle(.white)
                    Text("Posts")
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                    
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                
                VStack(spacing: 8){
                   
                    Text("1.8K")
                        .foregroundStyle(.white)
                    Text("Followers")
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                    
                }
                .frame(maxWidth: .infinity)
                
                Divider()
                
                VStack(spacing: 8){
                   
                    Text("22")
                        .foregroundStyle(.white)
                    Text("Following")
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                    
                }
                .frame(maxWidth: .infinity)
                
                Divider()
            }
            .frame(height: 50)
            
            //Tab buttons...
            
            Group{
                
                TabButton(image: "rectangle.3.offgrid", title: "Explore", selected: $selecteed, animation: animation)
                    .padding(.top)
                
                TabButton(image: "magnifyingglass", title: "Feed", selected: $selecteed, animation: animation)
                
                TabButton(image: "bell", title: "Notification", selected: $selecteed, animation: animation)
                
                TabButton(image: "paperplane", title: "Direct", selected: $selecteed, animation: animation)
                
                TabButton(image: "play.tv", title: "IGTV", selected: $selecteed, animation: animation)
                
                TabButton(image: "gear", title: "Settings", selected: $selecteed, animation: animation)
            }
            
            Spacer()
            
            Divider()
                .padding(.horizontal, 20)
            
            Spacer()
            
            TabButton(image: "arrow.down.forward.square", title: "Logout", selected: .constant(""), animation: animation)
                .padding(.bottom, 20)
        }
        .frame(maxWidth: (screen.width / 1.4) / 3.5, maxHeight: .infinity)
        .background(BlurWindow())
    }
}

#Preview {
    ContentView()
}
