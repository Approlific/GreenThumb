//
//  PlantSummaryView.swift
//  GreenThumb
//
//  Created by Jerry Toland on 5/4/26.
//

import SwiftUI

struct PlantSummaryView: View {
    
    var plant: Plant
    
    var body: some View {
        
        HStack {
                
            Image(plant.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 175)
                .cornerRadius(10)
            
            VStack (alignment: .leading) {
                Text(plant.name)
                    .bold()
                
                Text(plant.scientificName)
                    .italic()
            }
        }
        .padding()
        .background(.white)
        .compositingGroup()
        .shadow(radius: 5)
        .frame(maxWidth: .infinity)
        
    }
}

#Preview {
    PlantSummaryView(plant: Plant(name: "Southern Magnolia",
                                 scientificName: "Magnolia grandiflora",
                                  light: "Full Sun to partial shade.",
                                  water: "Deeply every 1-2 weeks (once established, they are quite drought-tolerant).",
                                  description: "An iconic evergreen tree of the South, famous for its large, waxy green leaves and massive, fragrant white blossoms that bloom in late spring.",
                                  imageName: "magnolia"))
}
