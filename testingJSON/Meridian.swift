//
//  Meridian.swift
//  testingJSON
//
//  Created by Micol on 15.11.23.
//

import Foundation

struct Meridian: Codable, Identifiable {
    let id: String
    let element: String
    let yinYang: String
    let points: [Acupoint]
}
