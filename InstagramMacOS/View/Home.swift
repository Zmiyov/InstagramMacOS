//
//  Home.swift
//  InstagramMacOS
//
//  Created by Vladimir Pisarenko on 15.05.2024.
//

import SwiftUI

//linear gradient

let gradient = LinearGradient(gradient: .init(colors: [.gradient1, .gradient2]), startPoint: .leading, endPoint: .trailing)

struct Home: View {
    
    var screen = NSScreen.main!.visibleFrame
    

    
    var body: some View {
        
        HStack(spacing: 0) {

            SideView()
            
            MainView()
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width / 1.4, height: screen.height - 60)
        .background(BlurWindow())
    }
}

#Preview {
    Home()
}
