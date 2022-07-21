//
//  PersonModel.swift
//  My M4L6 Environment Object Challenge
//
//  Created by Ian Bateman on 20/07/2022.
//

import Foundation

class PersonModel: ObservableObject {
    
    @Published var people = [Person]()
    
    init() {
        
        self.people = DataService.getLocalData()
        
    }
    
}
