//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Brandon Alexander on 11/2/23.
//

import SwiftUI

struct WeatherButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20,
                          weight: .bold,
                          design: .default))
            .cornerRadius(10)
    }
}

#Preview {
    WeatherButton(title: "Test Button", textColor: .blue, backgroundColor: .white)
}
