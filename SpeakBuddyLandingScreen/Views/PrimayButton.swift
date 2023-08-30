//
//  PrimayButton.swift
//  SpeakBuddyLandingScreen
//
//  Created by Evan Liang on 8/29/23.
//

import SwiftUI

struct PrimaryButton: View {
    
    let onTap: () -> Void
    
    var body: some View {
        Button {
        } label: {
            Text(SubscriptionPlanConstants.signUpForPlanButtonLabel)
                .font(Font.themeFont(size: 16))
                .monospaced()
                .minimumScaleFactor(0.5)
                .foregroundColor(.white)
                .fontWeight(.bold)
                .frame(height: 24)
                .padding([.top, .bottom], 16)
                .frame(maxWidth: .infinity)
            
        }
        .background(AssetColor.buttonBackground.color)
        .clipShape(Capsule())
        .overlay(
            RoundedRectangle(cornerRadius: 29)
                .inset(by: 0.5)
                .stroke(.white, lineWidth: 1)
        )
        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 2)
    }

}

