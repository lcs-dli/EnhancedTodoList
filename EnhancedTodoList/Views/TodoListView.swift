//
//  TodoListView.swift
//  EnhancedTodoList
//
//  Created by David Li on 2024-02-03.
//

import SwiftUI

struct TodoListView: View {
    // MARK: Stored properties
        
        // Our list of items to complete
        @State private var items: [TodoItem] = []
        
        // MARK: Computed properties
        var body: some View {
            NavigationStack {
                VStack {
                    
                    List(items) { currentItem in
                        Label {
                            Text(currentItem.details)
                        } icon: {
                            Image(systemName: currentItem.isCompleted ? "checkmark.circle" : "circle")
                        }
                    }
                }
                .navigationTitle("Tasks")
            }
            .onAppear {
                // Populate with example data
                if items.isEmpty {
                    items.append(contentsOf: exampleData)
                }
            }
        }
}

#Preview {
    TodoListView()
}
