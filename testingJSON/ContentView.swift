//
//  ContentView.swift
//  testingJSON
//
//  Created by Micol on 15.11.23.
//

import SwiftUI

struct ContentView: View {
    
    let meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    @State private var current = "lung"
    
    let listOfMeridians = ["liver","gallbladder","heart","smallintestine","pericardium","tripleheater","spleen","stomach","lung","largeintestine","kidney","bladder"]
    
    var body: some View {
        Form {
            Picker("Type of Meridian", selection: $current){
                ForEach(listOfMeridians, id: \.self) { meridian in
                    Text("\(meridian)")
                }
            }
        }
        VStack(alignment: .leading){
            let currentMeridian = meridians[current, default: Meridian(id: "Not Known", element: "Unknown", yinYang: "yinYang", points: [])]
            
            Text("Total meridians: \(meridians.count)") // "12"
            Text("First meridian: \(currentMeridian.id)") // "Liver"
            Text("Acupoints on meridian: \(currentMeridian.points.count)") // liver.points.count -> "6"
            Text("Element of meridian: \(currentMeridian.element)") // "wood"
            HStack {
                VStack(alignment: .leading) {
                    Text("Level 2 point: ")
                }
                VStack(alignment: .trailing) {
                    Text(currentMeridian.points[1].id) // name -> "Liv-2"
                    Text(currentMeridian.points[1].element) // element -> "fire"
                    Text(currentMeridian.points[1].description) // description -> "Description"
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
