//
//  ContentView.swift
//  WeatherApp
//
//  Created by Angelo Zambrano on 23/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = WeekViewModel()
    @State private var isNight: Bool = true

    private var backgroundGradient: Gradient {
        Gradient(colors:
            [
                isNight ? .gray : Color("LightBlue"),
                Color(isNight ? .black : .blue),
            ]
        )
    }

    var body: some View {
        ZStack {
            LinearGradient(gradient: backgroundGradient,
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                VStack(spacing: 20) {
                    Text("Bogotá - Colombia")
                        .font(.largeTitle)
                        .foregroundStyle(.white)

                    Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)

                    Text("18°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundStyle(.white)
                }

                WeekView(days: vm.days)

                VStack {
                    Button { isNight.toggle() } label: {
                        Text("Change time to \(isNight ? "Day" : "Night")")
                            .font(.headline)
                    }
                    .padding(10)
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(8)
                }.padding(.horizontal)
            }
        }
    }
}

#Preview {
    ContentView()
}
