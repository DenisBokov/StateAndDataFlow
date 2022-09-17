//
//  StateAndDataFlowApp.swift
//  StateAndDataFlow
//
//  Created by Denis Bokov on 14.09.2022.
//

import SwiftUI

@main
struct StateAndDataFlowApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
