//
//  WeekView.swift
//  WeatherApp
//
//  Created by Angelo Zambrano on 23/11/24.
//

import SwiftUI

struct WeekView: View {
    let days: [WeatherDayModel]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack(spacing: 12) {
                ForEach(days) { day in
                    DayView(day: day)
                }
            }.frame(maxWidth: .infinity).padding()
        }
    }
}

#Preview {
    let days: [WeatherDayModel] = [
        WeatherDayModel(name: .monday, condition: .cloudy, temperatureCelsius: 18),
        WeatherDayModel(name: .tuesday, condition: .cloudy, temperatureCelsius: 17),
        WeatherDayModel(name: .wednesday, condition: .rainy, temperatureCelsius: 16),
        WeatherDayModel(name: .thursday, condition: .stormy, temperatureCelsius: 15),
        WeatherDayModel(name: .friday, condition: .cloudy, temperatureCelsius: 18),
        WeatherDayModel(name: .saturday, condition: .sunny, temperatureCelsius: 20),
        WeatherDayModel(name: .sunday, condition: .sunny, temperatureCelsius: 22),
    ]

    ZStack {
        Color.blue.opacity(0.3)
        WeekView(days: days)
    }
    .ignoresSafeArea(.all)
}
