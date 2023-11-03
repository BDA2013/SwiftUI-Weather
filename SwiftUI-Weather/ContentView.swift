//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Brandon Alexander on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            /// Background
            /// The '$' Binds the isNight above to the isNight value in the BackgroundView
            BackgroundView(isNight: $isNight)
            
            /// Location
            VStack {
                CityTextView(cityName: "Englewood", state: "NJ")
                
                /// Current Weather Icon
                CurrentWeatherView(imageName: isNight ? "moon.fill" :
                                    "sun.max.fill",
                                   temperature: 38)
                
                ///5-Day Forecast
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: isNight ? "moon.fill" : "sun.max.fill",
                                   temperature: 55)
                    WeatherDayView(dayOfWeek: "SAT", 
                                   imageName: "cloud.fill",
                                   temperature: 58)
                    WeatherDayView(dayOfWeek: "SUN", 
                                   imageName: isNight ? "cloud.moon.fill" : "cloud.sun.fill",
                                   temperature: 61)
                    WeatherDayView(dayOfWeek: "MON", 
                                   imageName:  isNight ? "cloud.moon.fill" : "cloud.sun.fill",
                                   temperature: 59)
                    WeatherDayView(dayOfWeek: "TUE", 
                                   imageName: "cloud.fill",
                                   temperature: 63)
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
