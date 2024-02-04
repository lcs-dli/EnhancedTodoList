//
//  LandingView.swift
//  EnhancedTodoList
//
//  Created by David Li on 2024-02-03.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        TabView {
            TodoListView()
                .tabItem {
                    Text("Tasks")
                    Image(systemName: "checklist")
            }
                    
            StatisticsView()
                .tabItem {
                    Text("Stats")
                    Image(systemName: "chart.line.uptrend.xyaxis")
                    }
            }
    }
}

#Preview {
    LandingView()
}
