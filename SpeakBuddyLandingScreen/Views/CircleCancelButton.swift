//
//  CircleCancelButton.swift
//  SpeakBuddyLandingScreen
//
//  Created by Evan Liang on 8/29/23.
//

import SwiftUI

struct CircleCancelButton: View {
    
    var body: some View {
        Button {
            
        } label: {
            Text("×")
                .font(Font.themeFont(size: 26))
                .bold()
                .monospaced()
                .multilineTextAlignment(.center)
        }
        .padding(12)
        .background(.white)
        .clipShape(Circle())
        .foregroundColor(AssetColor.textColor.color)
        .shadow(color: .black.opacity(0.15), radius: 5, x: 0, y: 2)
    }
    
}
