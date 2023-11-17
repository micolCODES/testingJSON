//
//  MeridianInfoView.swift
//  testingJSON
//
//  Created by Micol on 17.11.23.
//

import SwiftUI

struct MeridianInfoView: View {
    @State private var current = "lung"
    @State private var level = 0
    
    @State private var meridians: [String: Meridian] = Bundle.main.decode("meridiansNacupoints.json")
    
    var chosenMeridian: String
    
    var body: some View {
        let currentMeridian = meridians[chosenMeridian, default: Meridian(id: "Not Known", element: "Unknown", yinYang: "yinYang", points: [])]
        
        VStack(alignment: .leading){
           Text("Total meridians: \(meridians.count)") // "12"
           Text("First meridian: \(currentMeridian.id)") // "Liver"
           Text("Acupoints on meridian: \(currentMeridian.points.count)") // liver.points.count -> "6"
           Text("Element of meridian: \(currentMeridian.element)") // "wood"
           }
           Picker("Level", selection: $level){
               ForEach(0...5, id: \.self) { level in
                   Text(level != 0 ? "\(level)" : "master")
               }
           }
           HStack {
               VStack(alignment: .leading) {
                   Text(level != 0 ? "Level \(level) point" : "Master point")
               }
               VStack(alignment: .trailing) {
                   Text(currentMeridian.points[level].id) // name -> "Liv-2"
                   Text(currentMeridian.points[level].element) // element -> "fire"
                   Text(currentMeridian.points[level].description) // description -> "Description"
               }
           }
    }
}

#Preview {
    MeridianInfoView(chosenMeridian: "liver")
}
