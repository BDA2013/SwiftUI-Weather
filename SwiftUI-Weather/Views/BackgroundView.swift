//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Brandon Alexander on 11/3/23.
//

import SwiftUI

struct BackgroundView: View {
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
