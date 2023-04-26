//
//  AFL3_0706012110046_WilliamJohnsonWonggeApp.swift
//  AFL3-0706012110046-WilliamJohnsonWongge
//
//  Created by William j. Wongge on 14/04/23.
//

import SwiftUI

@main
struct AFL3_0706012110046_WilliamJohnsonWonggeApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif
        
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
