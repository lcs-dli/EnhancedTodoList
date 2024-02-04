//
//  EnhancedTodoListApp.swift
//  EnhancedTodoList
//
//  Created by David Li on 2024-02-03.
//

import SwiftUI
import SwiftData

@main
struct EnhancedTodoListApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
        }
        .modelContainer(for: TodoItem.self)

    }
}
