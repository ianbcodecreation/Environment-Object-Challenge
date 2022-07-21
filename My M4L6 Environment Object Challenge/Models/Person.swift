//
//  Person.swift
//  My M4L6 Environment Object Challenge
//
//  Created by Ian Bateman on 20/07/2022.
//

import Foundation

class Model: ObservableObject {
    
    @Published var showName = true
    @Published var showStreet = true
    @Published var showTown = true
    @Published var showCompany = true
    @Published var showYOE = true
    
}
    
class Person : Identifiable, Decodable, ObservableObject {
    
    var id: UUID?
    var name: String
    var street: String
    var town: String
    var company: String
    var yearsOfExperience: Int
    
}
