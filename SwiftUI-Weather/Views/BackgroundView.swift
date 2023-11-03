//
//  BackgroundView.swift
//  SwiftUI-Weather
//
//  Created by Brandon Alexander on 11/3/23.
//

import SwiftUI

struct BackgroundView: View {
    ///Binding is a property wrapper type that can read and write a value owned by a source of truth as a two way connection
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color.lightBlue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
