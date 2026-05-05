//
//  DataService.swift
//  GreenThumb
//
//  Created by Jerry Toland on 5/4/26.
//

import Foundation

struct DataService {
    
    func getPlantData() -> [Plant] {
        
        if let url = Bundle.main.url(forResource: "plants", withExtension: "json") {
            
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    
                    let plant = try decoder.decode([Plant].self, from: data)
                    
                    return plant
                    
                } catch {
                    
                    print("Could not parse the JSON: \(error)")
                    
                }
                
            } catch {
                
                print("Could not read the file: \(error)")
                
            }
            
        }
        
        return [Plant]()
        
    }
    
    func getGlossaryData() -> [Glossary] {
        
        if let url = Bundle.main.url(forResource: "glossary", withExtension: "json") {
            
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    
                    let glossary = try decoder.decode([Glossary].self, from: data)
                    
                    return glossary
                    
                } catch {
                    
                    print("Could not parse the JSON: \(error)")
                    
                }
                
            } catch {
                
                print("Could not read the file: \(error)")
                
            }
            
        }
        
        return [Glossary]()
        
    }
    
}
