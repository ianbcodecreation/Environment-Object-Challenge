//
//  ChallengeTabView.swift
//  My M4L6 Environment Object Challenge
//
//  Created by Ian Bateman on 20/07/2022.
//

import SwiftUI

struct ChallengeTabView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        
        TabView {
            
            PeopleListView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.2")
                        Text("People List")
                    }
                }
            
            DisplayPreferencesView()
                .tabItem {
                    VStack {
                        Image(systemName: "gearshape")
                        Text("Preferences")
                    }
                }
        }
        .environmentObject(PersonModel())
    }
}

struct ChallengeTabView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeTabView()
            .environmentObject(Model())
    }
}
