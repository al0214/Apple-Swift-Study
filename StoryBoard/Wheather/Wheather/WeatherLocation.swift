//
//  WeatherLocation.swift
//  Wheather
//
//  Created by SamoYed on 2023/03/15.
//

import Foundation

struct WeatherLocation: Decodable {
    let name: String
    let localNames: [String: String]
    let lat, lon: Double
    let country: String

    enum CodingKeys: String, CodingKey {
        case name
        case localNames = "local_names"
        case lat, lon, country
    }
}

