//
//  Plant.swift
//  GreenThumb
//
//  Created by Jerry Toland on 5/4/26.
//

import Foundation

struct Plant: Identifiable, Decodable {
    
    let id: UUID = UUID()
    var name: String
    var scientificName: String
    var light: String
    var water: String
    var description: String
    var imageName: String
    
}
