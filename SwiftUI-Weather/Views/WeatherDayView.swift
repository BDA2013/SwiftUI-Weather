//
//  WeatherDayView.swift
//  SwiftUI-Weather
//
//  Created by Brandon Alexander on 11/3/23.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            ///Day of the week
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            ///Temperture
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}
