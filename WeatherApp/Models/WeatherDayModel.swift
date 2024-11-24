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
    func shortName() -> String {
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
    let icon: String
    let temperatureCelsius: Int
}

enum WeatherIcon: String {
    case sun = "sun.max.fill"
    case cloudSun = "cloud.sun.fill"
    case cloud = "cloud.fill"
    case cloudRain = "cloud.rain.fill"
    case cloudBolt = "cloud.bolt.fill"
}

enum WeatherCondition {
    case sunny
    case cloudy
    case rainy
    case stormy
}
