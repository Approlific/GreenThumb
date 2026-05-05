//
//  Glossary.swift
//  GreenThumb
//
//  Created by Jerry Toland on 5/4/26.
//

import Foundation

struct Glossary: Identifiable, Hashable, Decodable {
    
    let id: UUID = UUID()
    var name: String
    var definition: String
    var context: String
    var symbol: String
    
}
