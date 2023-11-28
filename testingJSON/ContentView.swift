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
    
    let influentialPoints: [String: ExtraPoint] = Bundle.main.decode("InfluentialPoints.json")
    
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
                    Section(header: Text("Extra Points")) {
                        ForEach(0...influentialPoints.count, id: \.self) { point in
                            NavigationLink {
                                let pointToPass = influentialPoints
                                //ExtraPointView(pointPassed: pointToPass)
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
