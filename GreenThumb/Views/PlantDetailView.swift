//
//  PlantDetailView.swift
//  GreenThumb
//
//  Created by Jerry Toland on 5/4/26.
//

import SwiftUI

struct PlantDetailView: View {
    
    var plant: Plant
    
    var body: some View {
        ScrollView (showsIndicators: false){
            VStack (alignment: .leading) {
                
                Image(plant.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                Text(plant.name)
                    .font(.largeTitle)
                    .bold()
                
                Text(plant.scientificName)
                    .font(.title2)
                    .italic()
                    .padding(.bottom, 5)
                
                Text(plant.description)
                
                GeometryReader { geometry in
                    
                    HStack {
                        
                        ZStack (alignment: .center) {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.tint.opacity(0.7))
                            
                            VStack {
                                
                                Image(systemName: "drop.circle.fill")
                                    .font(.largeTitle)
                                    .padding(.bottom, 5)
                                
                                Text("Water:")
                                    .font(.title2)
                                    .bold()
                                
                                Text(plant.water)
                                
                                Spacer()
                                
                            }
                            .padding()
                            .foregroundStyle(.white)
                            
                            
                        }
                        .frame(width: (geometry.size.width * 0.5) - 10, height: 250)
                        
                        Spacer()
                        
                        ZStack (alignment: .center) {
                            
                            RoundedRectangle(cornerRadius: 15)
                                .fill(.tint.opacity(0.7))
                            
                            VStack {
                                
                                Image(systemName: "sun.max.fill")
                                    .font(.largeTitle)
                                    .padding(.bottom, 5)
                                
                                Text("Light:")
                                    .font(.title2)
                                    .bold()
                                
                                Text(plant.light)
                                
                                Spacer()
                                
                            }
                            .foregroundStyle(.white)
                            .padding()
                            
                        }
                        .frame(width: (geometry.size.width * 0.5) - 10, height: 250)
                        
                    }
                    
                }
                
            }
            .padding()
            
        }
            
    }
}

#Preview {
    PlantDetailView(plant: Plant(name: "Southern Magnolia",
                                 scientificName: "Magnolia grandiflora",
                                  light: "Full Sun to partial shade.",
                                  water: "Deeply every 1-2 weeks (once established, they are quite drought-tolerant).",
                                  description: "An iconic evergreen tree of the South, famous for its large, waxy green leaves and massive, fragrant white blossoms that bloom in late spring.",
                                  imageName: "magnolia"))
}
