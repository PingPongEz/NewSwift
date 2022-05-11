//
//  SwiftUIView.swift
//  NewSwift
//
//  Created by Сергей Веретенников on 11/05/2022.
//

import SwiftUI

struct ButtonSwitch: View {
    
    let action: () -> ()
    let title: String
    
    var body: some View {
        Button(action: action) {
            Text(title).minimumScaleFactor(0.3).lineLimit(1)
                .frame(width: 140, height: 50)
                .font(.title)
                .foregroundColor(.black)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(18)
        .overlay(RoundedRectangle(cornerRadius: 18).stroke(.white, lineWidth: 3))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwitch(action: {}, title: "GO")
    }
}
