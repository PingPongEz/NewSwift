//
//  ContentView.swift
//  NewSwift
//
//  Created by Сергей Веретенников on 10/05/2022.
//

import SwiftUI

enum ColorCases {
    case red
    case yellow
    case green
}

struct ContentView: View {
    
    @State private var currentColor = ColorCases.green
    @State private var text = "Start"
    @State private var red = 0.2
    @State private var yellow = 0.2
    @State private var green = 0.2
    
    var body: some View {
        ZStack {
            Rectangle()
                .ignoresSafeArea()
                .foregroundColor(.black)
            VStack(spacing: 200.0) {
                VStack(spacing: 15.0) {
                    Circles(color: .red, opacity: red)
                    Circles(color: .yellow, opacity: yellow)
                    Circles(color: .green, opacity: green)
                }
                .padding()
                ButtonSwitch(action: switchColor, title: text)
                .padding()
            }
        }
    }
    
    private func switchColor() -> Void {
        switch currentColor {
        case .red:
            red = 0.2
            yellow = 1
            text = "Turn green light on"
            currentColor = .yellow
        case .yellow:
            yellow = 0.2
            green = 1
            text = "Turn red light on"
            currentColor = .green
        case .green:
            green = 0.2
            red = 1
            text = "Turn yellow light on"
            currentColor = .red
        }
    }
}

struct Circles: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        
        ZStack {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .opacity(opacity)
                .clipShape(Circle())
                .overlay(Circle().stroke(.white, lineWidth: 3))
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
