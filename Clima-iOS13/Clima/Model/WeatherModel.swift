//
//  WeatherModel.swift
//  Clima
//
//  Created by Josiah Lovin on 4/2/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temp: Double
    
    var tempString: String {
        return String(format: "%.1f", temp)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500-531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "wind"
        case 800:
            return "sun.min"
        case 801...804:
            return "cloud"
        default:
            return "sun.min"
        }
    }
}
