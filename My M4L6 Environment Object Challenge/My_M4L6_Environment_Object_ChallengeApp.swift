//
//  My_M4L6_Environment_Object_ChallengeApp.swift
//  My M4L6 Environment Object Challenge
//
//  Created by Ian Bateman on 20/07/2022.
//

import SwiftUI

@main
struct My_M4L6_Environment_Object_ChallengeApp: App {
    var body: some Scene {
        WindowGroup {
          ChallengeTabView()
                .environmentObject(Model())
        }
    }
}
