//
//  TipToolsApp.swift
//  TipTools
//
//  Created by Duy Huỳnh Nguyễn Tuấn on 24/11/2023.
//

import SwiftUI
import TipKit

@main
struct TipToolsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
//                    try? Tips.resetDatastore()
                    try? Tips.configure([
//                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
