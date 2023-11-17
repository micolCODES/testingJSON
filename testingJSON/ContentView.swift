//
//  ContentView.swift
//  testingJSON
//
//  Created by Micol on 15.11.23.
//

import SwiftUI

struct ContentView: View {
    
//    @State private var meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    @State private var current = "lung"
    
    let listOfMeridians = ["liver","gallbladder","heart","small intestine","pericardium","triple heater","spleen","stomach","lung","large intestine","kidney","bladder"]
    
    var body: some View {
        NavigationStack {
            ForEach(listOfMeridians, id: \.self) { meridian in
                NavigationLink {
                    MeridianInfoView(chosenMeridian: meridian)
                } label: {
                    Text("\(meridian)")
                }
            }
        }
//            VStack(alignment: .leading){
//                
//                Text("Total meridians: \(meridians.count)") // "12"
//                Text("First meridian: \(currentMeridian.id)") // "Liver"
//                Text("Acupoints on meridian: \(currentMeridian.points.count)") // liver.points.count -> "6"
//                Text("Element of meridian: \(currentMeridian.element)") // "wood"
//            }
//            Picker("Level", selection: $current){
//                ForEach(0...5, id: \.self) { level in
//                    Text(level != 0 ? "\(level)" : "master")
//                }
//            }
//            HStack {
//                VStack(alignment: .leading) {
//                    Text(level != 0 ? "Level \(level) point" : "Master point")
//                }
//                VStack(alignment: .trailing) {
//                    Text(currentMeridian.points[level].id) // name -> "Liv-2"
//                    Text(currentMeridian.points[level].element) // element -> "fire"
//                    Text(currentMeridian.points[level].description) // description -> "Description"
//                }
//            }
        .padding()
    }
}

#Preview {
    ContentView()
}
