//
//  DataService.swift
//  My M4L6 Environment Object Challenge
//
//  Created by Ian Bateman on 20/07/2022.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Person] {
        
        // Parse local JSON file
        
        // Get a url path to the JSON file
        let pathString = Bundle.main.path(forResource: "people", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Person]()
        }
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                // Get the decoded recipeData
                let personData = try decoder.decode([Person].self, from: data)
                
                // Add the unique UUIDs for the recipes
                for p in personData {
                    p.id = UUID()
                }
                /*for r in personData {
                    r.id = UUID()
                }*/
                // Return the recipes
                return personData
            }
            catch {
                // error with parsin json
                print(error)
            }
        }
        catch {
            // error with getting data
            print(error)
        }

        return [Person]()
    }
}
