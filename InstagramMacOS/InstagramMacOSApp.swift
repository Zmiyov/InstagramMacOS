//
//  InstagramMacOSApp.swift
//  InstagramMacOS
//
//  Created by Vladimir Pisarenko on 15.05.2024.
//

import SwiftUI

@main
struct InstagramMacOSApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

//Hiding focus ring...
extension NSTextField {
    
    open override var focusRingType: NSFocusRingType {
        get{.none}
        set{}
    }
}
