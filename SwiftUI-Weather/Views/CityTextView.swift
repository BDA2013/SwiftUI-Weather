//
//  CityTextView.swift
//  SwiftUI-Weather
//
//  Created by Brandon Alexander on 11/3/23.
//

import SwiftUI

struct CityTextView: View {
    var cityName: String
    var state: String
    
    var body: some View {
        Text("\(cityName), \(state)")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}
