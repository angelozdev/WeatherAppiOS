//
//  WeekViewModel.swift
//  WeatherApp
//
//  Created by Angelo Zambrano on 24/11/24.
//

import SwiftUI

class WeekViewModel: ObservableObject {
    @Published var days: [WeatherDayModel] = []

    init() {
        days = fetchWeatherData()
    }

    private func fetchWeatherData() -> [WeatherDayModel] {
        let days: [WeatherDayModel] = [
            WeatherDayModel(name: .monday, condition: .cloudy, temperatureCelsius: 18),
            WeatherDayModel(name: .tuesday, condition: .cloudy, temperatureCelsius: 17),
            WeatherDayModel(name: .wednesday, condition: .rainy, temperatureCelsius: 16),
            WeatherDayModel(name: .thursday, condition: .stormy, temperatureCelsius: 15),
            WeatherDayModel(name: .friday, condition: .cloudy, temperatureCelsius: 18),
            WeatherDayModel(name: .saturday, condition: .sunny, temperatureCelsius: 20),
            WeatherDayModel(name: .sunday, condition: .sunny, temperatureCelsius: 22),
        ]

        return days
    }
}
