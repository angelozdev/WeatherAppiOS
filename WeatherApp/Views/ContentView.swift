//
//  ContentView.swift
//  WeatherApp
//
//  Created by Angelo Zambrano on 23/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var vm = WeekViewModel()

    private let backgroundGradient: Gradient =
        Gradient(colors:
            [Color("LightBlue"),
             Color(hue: 0.6, saturation: 0.6, brightness: 0.6)]
        )

    var body: some View {
        ZStack {
            LinearGradient(gradient: backgroundGradient,
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)

            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    VStack(spacing: 5) {
                        Text("Bogotá - Colombia")
                            .font(.largeTitle)
                            .foregroundStyle(.white)

                        Image(systemName: "cloud.sun.fill")
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
                        Button {
                            print("Hola mundo")
                        } label: {
                            Text("Change day time")
                                .font(.headline)
                        }
                        .frame(maxWidth: .infinity - 10)
                        .padding(10)
                        .background(.white)
                        .cornerRadius(8)
                    }.padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
