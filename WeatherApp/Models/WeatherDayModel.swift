//
//  WeatherDayModel.swift
//  WeatherApp
//
//  Created by Angelo Zambrano on 23/11/24.
//

import Foundation

enum WeekDay: String {
    case monday = "Monday"
    case tuesday = "Tuesday"
    case wednesday = "Wednesday"
    case thursday = "Thursday"
    case friday = "Friday"
    case saturday = "Saturday"
    case sunday = "Sunday"
}

extension WeekDay {
    var shortName: String {
        switch self {
        case .monday:
            return "Mon"
        case .tuesday:
            return "Tue"
        case .wednesday:
            return "Wed"
        case .thursday:
            return "Thu"
        case .friday:
            return "Fri"
        case .saturday:
            return "Sat"
        case .sunday:
            return "Sun"
        }
    }
}

struct WeatherDayModel: Identifiable {
    let id: UUID = UUID()
    let name: WeekDay
    let condition: WeatherCondition
    let temperatureCelsius: Int
}

enum WeatherIcon: String {
    case sun = "sun.max.fill"
    case cloudSun = "cloud.sun.fill"
    case cloud = "cloud.fill"
    case cloudRain = "cloud.rain.fill"
    case cloudBolt = "cloud.bolt.fill"
    case cloudSnow = "cloud.snow.fill"
    case cloudFog = "cloud.fog.fill"
    case cloudSleet = "cloud.sleet.fill"
    case wind
    case cloudHail = "cloud.hail.fill"
}

enum WeatherCondition {
    case sunny
    case cloudy
    case rainy
    case stormy
    case snow
    case fog
    case sleet
    case wind
    case hail

    var icon: WeatherIcon {
        switch self {
        case .sunny:
            return .sun
        case .cloudy:
            return .cloud
        case .rainy:
            return .cloudRain
        case .stormy:
            return .cloudBolt
        case .snow:
            return .cloudSnow
        case .fog:
            return .cloudFog
        case .sleet:
            return .cloudSleet
        case .wind:
            return .wind
        case .hail:
            return .cloudHail
        }
    }
}
