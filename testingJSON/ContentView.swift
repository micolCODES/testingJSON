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
    
    let listOfInfluentialPoints = ["LIV-13","CV-12","CV-17","BL-17","GB-34","LU-9","BL-11","GB-39","ST-40","BL-12"]
    
    let listOfMasterPoints = ["LI-4","LU-7","PC-6","BL-40","ST-36","SP-6","SI-9","BL-54"]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                List {
                    
                    Section(header: Text("Major Meridians")) {
                        ForEach(listOfMeridians, id: \.self) { meridian in
                            NavigationLink {
                                MeridianInfoView(chosenMeridian: meridian)
                            } label: {
                                Text("\(meridian.capitalized)")
                            }
                        }
                    }
                    
                    Section(header: Text("Influential Points")) {
                        ForEach(listOfInfluentialPoints, id: \.self) { point in
                            NavigationLink {
                                ExtraPointView(chosenPoint: point, typeOfPoint: true)
                            } label: {
                                Text("\(point)")
                            }
                        }
                    }
                    
                    Section(header: Text("Master Points")) {
                        ForEach(listOfMasterPoints, id: \.self) { point in
                            NavigationLink {
                                ExtraPointView(chosenPoint: point, typeOfPoint: false)
                            } label: {
                                Text("\(point)")
                            }
                        }
                    }
                    
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
