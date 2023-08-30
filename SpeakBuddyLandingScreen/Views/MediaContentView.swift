//
//  MediaContentView.swift
//  SpeakBuddyLandingScreen
//
//  Created by Evan Liang on 8/29/23.
//

import SwiftUI

struct MediaContentView: View {
    
    @State var datas: [StatisticData]
    @State var animate = false

    let ratio: Double

    private var spacing: CGFloat {
        return 26 * ratio
    }
    
    private var barWidth: CGFloat {
        return 48 * ratio
    }
    
    private var imageWidth: CGFloat {
        return 188 * ratio
    }
    
    private var textHeight: CGFloat {
        return 18 * ratio
    }
    
    private var barCornerRadius: CGFloat {
        return 2.7 * ratio
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(spacing: 0) {
                HStack(alignment: .bottom, spacing: spacing) {
                    ForEach(datas, id: \.id) { data in
                        let barHeight = data.targetCount * ratio
                        VStack(spacing: 7) {
                            Rectangle()
                                .fill(AssetGradientColor.gradientRectangleLinear)
                                .offset(y: animate ? 0 : barHeight)
                                .frame(width: barWidth, height: barHeight)
                                .cornerRadius(barCornerRadius)
                                .animation(
                                    Animation.easeInOut(duration: 0.5).delay(Double(data.id) * 0.1),
                                    value: animate
                                )
                            Text(data.periodsString)
                                .font(Font.themeFont(size: 12))
                                .fontWeight(.black)
                                .foregroundColor(AssetColor.textColor.color)
                                .minimumScaleFactor(0.5)
                                .frame(height: textHeight)
                        }
                    }
                }
                .onAppear {
                    animate = true
                }
                .padding(.top, 52)
                .padding([.leading, .trailing], 38)
            }
            VStack {
                HStack {
                    Image("protty")
                        .resizable()
                        .scaledToFit()
                        .frame(width: imageWidth)
                }
            }
        }
    }
}
