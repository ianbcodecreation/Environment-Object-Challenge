//
//  DisplayPreferencesView.swift
//  My M4L6 Environment Object Challenge
//
//  Created by Ian Bateman on 20/07/2022.
//

import SwiftUI

struct DisplayPreferencesView: View {
    
    @EnvironmentObject var model: Model
    
    var body: some View {
        
        VStack {
            Text("Display Preferences")
                .padding()
                .font(.title)
            
            Toggle("Show Name", isOn: $model.showName)
            Toggle("Show Street", isOn: $model.showStreet)
            Toggle("Show Town", isOn: $model.showTown)
            Toggle("Show Company", isOn: $model.showCompany)
            Toggle("Show Years of Experience", isOn: $model.showYOE)
             
            Spacer()
        }
        .padding()
        
    }
}

struct DisplayPreferencesView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayPreferencesView()
            .environmentObject(Model())
    }
}
