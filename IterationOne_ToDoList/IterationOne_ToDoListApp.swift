//
//  IterationOne_ToDoListApp.swift
//** This file is where will we access Core Data in Iteration 2**

import SwiftUI
import SwiftData

@main
struct IterationOne_ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
