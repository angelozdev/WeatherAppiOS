//
//  DayView.swift
//  WeatherApp
//
//  Created by Angelo Zambrano on 23/11/24.
//

import SwiftUI

struct DayView: View {
    let day: WeatherDayModel

    private let iconSize: CGFloat = 32
    private let textFontSize: CGFloat = 16

    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text(day.name.shortName.uppercased())
                .font(.headline)
                .foregroundStyle(.white)

            Image(systemName: day.condition.icon.rawValue)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: iconSize, height: iconSize)

            Text("\(day.temperatureCelsius)°")
                .font(.system(size: textFontSize))
                .foregroundStyle(.white)
        }
        .frame(width: 80, height: 100)
        .padding(8)
        .cornerRadius(10)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 1)
        }
    }
}

#Preview {
    ZStack {
        Color.blue.opacity(0.3)
        DayView(day: WeatherDayModel(
            name: WeekDay.monday,
            condition: WeatherCondition.stormy,
            temperatureCelsius: 18)
        )
    }
    .background(.blue)
    .ignoresSafeArea(.all)
}
