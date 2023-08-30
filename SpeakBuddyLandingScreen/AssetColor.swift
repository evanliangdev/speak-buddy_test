//
//  AssetColor.swift
//  SpeakBuddyLandingScreen
//
//  Created by Evan Liang on 8/29/23.
//

import SwiftUI

enum AssetColor: String {
    
    case buttonBackground = "buttonBackground"
    case textColor = "textColor"
    case gradientTextLight = "gradientTextLight"
    case gradientTextDark = "gradientTextDark"
    case gradientRectangleLight = "gradientRectangleLight"
    case gradientRectangleDark = "gradientRectangleDark"
    case backgroundPurple = "backgroundPurple"
    
    var color: Color {
        return Color(self.rawValue)
    }
    
}

struct AssetGradientColor {
    
    static var gradientBackgroundLinear: LinearGradient {
        return LinearGradient(
            stops: [
                Gradient.Stop(color: AssetColor.backgroundPurple.color, location: CGFloat.zero),
                Gradient.Stop(color: Color.white, location: 1.0)
            ],
            startPoint: UnitPoint.topLeading,
            endPoint: UnitPoint.bottomTrailing
        )
    }
    
    static var gradientTextLinear: LinearGradient {
        return LinearGradient(
            gradient: Gradient(
                colors: [
                    AssetColor.gradientTextDark.color,
                    AssetColor.gradientTextLight.color
                ]
            ),
            startPoint: .top,
            endPoint: .bottom
        )
    }
    
    static var gradientRectangleLinear: LinearGradient {
        return LinearGradient(
            stops: [
                Gradient.Stop(color: Color(red: 0.12, green: 0.56, blue: 1), location: 0.00),
                Gradient.Stop(color: Color(red: 0.35, green: 0.75, blue: 1), location: 1.00),
            ],
            startPoint: UnitPoint(x: 1.02, y: 1.04),
            endPoint: UnitPoint(x: 1.02, y: 0.01)
        )
    }
    
}
