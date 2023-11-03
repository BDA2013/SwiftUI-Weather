//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Brandon Alexander on 11/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            /// Background
            BackgroundView(topColor: .blue, bottomColor: Color.lightBlue)
            
            /// Location
            VStack {
                CityTextView(cityName: "Englewood", state: "NJ")
                
                /// Current Weather Icon
                CurrentWeatherView(imageName: "sun.max.fill",
                                  temperature: 38)
                
                ///5-Day Forecast
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sun.max.fill",
                                   temperature: 55)
                    WeatherDayView(dayOfWeek: "SAT", 
                                   imageName: "cloud.fill",
                                   temperature: 58)
                    WeatherDayView(dayOfWeek: "SUN", 
                                   imageName: "cloud.sun.fill",
                                   temperature: 61)
                    WeatherDayView(dayOfWeek: "MON", 
                                   imageName: "cloud.sun.fill",
                                   temperature: 59)
                    WeatherDayView(dayOfWeek: "TUE", 
                                   imageName: "cloud.fill",
                                   temperature: 63)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
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
