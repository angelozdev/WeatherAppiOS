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
    let vm = WeekViewModel()
    ZStack {
        Color("LightBlue").opacity(0.3)
        WeekView(days: vm.days)
    }
    .ignoresSafeArea(.all)
}
