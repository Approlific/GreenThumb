//
//  ContentView.swift
//  GreenThumb
//
//  Created by Jerry Toland on 5/4/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        NavigationStack {
            
            VStack (alignment: .leading) {
                
                TabView {
                    
                    PlantListView()
                        .tabItem {
                            Image(systemName: "wind.circle")
                            
                            Text("Plants")
                        }
                    
                    GlossaryView()
                        .tabItem {
                            Image(systemName: "info.circle")
                            
                            Text("Glossary")
                        }
                    
                }
                
            }
            .navigationTitle("GreenThumb")
        }
    }
}

#Preview {
    MainView()
}
