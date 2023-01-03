//
//  Landmark.swift
//  Landmarks
//
//  Created by Andrii Zadorozhnii on 04.12.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var draft: Double
    var displacement: Double
    var tpc: Double
    var mtc: Double
    var lcf: Double
    }
