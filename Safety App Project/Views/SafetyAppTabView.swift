//
//  ContentView.swift
//  Safety App Project
//
//  Created by Dhruv Dingari on 2/24/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            SafetyAppHomeView().tabItem {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            }
            
            SafetyAppChecklistView().tabItem {
                VStack {
                    Image(systemName: "checkmark")
                    Text("Checklists")
                }
            }
            
            Text("SDS Lookup").tabItem {
                VStack {
                    Image(systemName: "list.number")
                    Text("SDS Lookup")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
