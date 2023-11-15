//
//  ContentView.swift
//  testingJSON
//
//  Created by Micol on 15.11.23.
//

import SwiftUI

struct ContentView: View {
    
    let meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    
    var body: some View {
        VStack(alignment: .leading){
            Text("Total meridians: \(meridians.count)") // "12"
            Text("First meridian: ") // "Liver"
            Text("Acupoints on meridian: ") // liver.points.count -> "6"
            Text("Element of meridian: ") // "wood"
            HStack {
                VStack(alignment: .leading) {
                    Text("Level 2 point: ")
                }
                VStack(alignment: .trailing) {
                    Text("-") // name -> "Liv-2"
                    Text("-") // element -> "fire"
                    Text("-") // description -> "Description"
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
