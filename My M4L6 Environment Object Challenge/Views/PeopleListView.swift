//
//  ContentView.swift
//  My M4L6 Environment Object Challenge
//
//  Created by Ian Bateman on 20/07/2022.
//

import SwiftUI

struct PeopleListView: View {
    
    @EnvironmentObject var model: Model
    
    @ObservedObject var person = PersonModel()
    
    var body: some View {
        
        NavigationView {
            List(person.people) { p in
                
                VStack (alignment: .leading) {
                    if model.showName {
                        Text("Name: " + p.name)
                    }
                    if model.showStreet {
                        Text("Address: " + p.street)
                    }
                    if model.showTown {
                        Text("Town: " + p.town)
                    }
                    if model.showCompany {
                        Text("Company: " + p.company)
                    }
                    if model.showYOE {
                        Text("Years of Experience: " + String(p.yearsOfExperience))
                    }

                }
            }
            .navigationTitle("People")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleListView()
            .environmentObject(Model())
    }
}
