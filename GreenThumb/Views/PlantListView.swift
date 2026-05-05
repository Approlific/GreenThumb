//
//  PlantListView.swift
//  GreenThumb
//
//  Created by Jerry Toland on 5/4/26.
//

import SwiftUI

struct PlantListView: View {
    
    @State var plants: [Plant] = [Plant]()
    var dataService: DataService = DataService()
    
    var body: some View {
            
        VStack {
            
            List {
                ForEach(plants) { plant in
                    
                    NavigationLink {
                        
                        PlantDetailView(plant: plant)
                        
                    } label: {
                                                    
                        PlantSummaryView(plant: plant)
                        
                    }

                    
                }
                
            }
            
        }
        .onAppear() {
            
            plants = dataService.getPlantData()
            
        }
        
    }
}

#Preview {
    PlantListView()
}
