//
//  WeatherModel.swift
//  Clima
//
//  Created by Edward Hayes on 9/17/23.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var tempString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200..<300:
            switch conditionId {
            case 202:
                return "cloud.bolt.rain"
            case 212:
                return "cloud.bolt.rain"
            case 221:
                return "cloud.bolt.rain"
            case 232:
                return "cloud.bolt.rain"
            default:
                return "cloud.bolt"
            }
        case 300..<400:
            return "cloud.drizzle"
        case 500..<600:
            switch conditionId {
            case 502:
                return "cloud.heavyrain"
            case 504:
                return "cloud.heavyrain"
            case 522:
                return "cloud.heavyrain"
            case 511:
                return "cloud.sleet"
            default:
                return "cloud.rain"
            }
            
        case 600..<700:
            return "snowflake"
        case 700..<800:
            switch conditionId {
            case 711:
                return "smoke"
            case 741:
                return "cloud.fog"
            case 781:
                return "tornado.circle"
            default:
                return "aqi.low"
            }
        case 800...:
            switch conditionId {
            case 800:
                return "sun.max"
            case 802:
                return "cloud.sun"
            default:
                return "cloud"
            }
        default:
            return "sun.max"
        }
    }

}
