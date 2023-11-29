//
//  ExtraPointView.swift
//  testingJSON
//
//  Created by Micol on 27.11.23.
//

import SwiftUI

struct ExtraPointView: View {
    
    var chosenPoint: String
    var typeOfPoint: Bool
    
    let influentialPoints: [String: ExtraPoint] = Bundle.main.decode("InfluentialPoints.json")
    
    let masterPoints: [String: ExtraPoint] = Bundle.main.decode("MasterPoints.json")
    
    var body: some View {
        let influentialPoint = influentialPoints[chosenPoint, default: ExtraPoint(id: "Not Known", target: "Unknown", description: "Unknown")]
        let masterPoint = masterPoints[chosenPoint, default: ExtraPoint(id: "Not Known", target: "Unknown", description: "Unknown")]
        Text(typeOfPoint ? "Influential Point" : "Master Point")
        Text("id: \(typeOfPoint ? influentialPoint.id : masterPoint.id)")
        Text("target: \(typeOfPoint ? influentialPoint.target : masterPoint.target)")
        Text("description: \(typeOfPoint ? influentialPoint.description : masterPoint.description)")
    }
}

#Preview {
    ExtraPointView(chosenPoint: "CV-12", typeOfPoint: true)
}
