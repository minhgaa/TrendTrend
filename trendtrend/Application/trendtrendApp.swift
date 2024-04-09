//
//  trendtrendApp.swift
//  trendtrend

import SwiftUI

@main
struct trendtrendApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
