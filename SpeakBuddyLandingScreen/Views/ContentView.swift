//
//  ContentView.swift
//  SpeakBuddyLandingScreen
//
//  Created by Evan Liang on 8/29/23.
//

import SwiftUI

struct ContentView: View {
    
    private let designScreenWidth: CGFloat = 375.0
    
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    @Environment(\.verticalSizeClass) private var verticalSizeClass

    private var shouldShowLandscapeView: Bool {
        return !(horizontalSizeClass == .compact && verticalSizeClass == .regular)
    }
    
    @State private var datas = StatisticData.sampleDatas
    
    var body: some View {
        if shouldShowLandscapeView {
            landscapeView
        } else {
            regularView
        }
    }
    
    var landscapeView: some View {
        ZStack {
            GeometryReader { geometry in
                HStack(spacing: 0) {
                    VStack(spacing: 16) {
                        Text(SubscriptionPlanConstants.title)
                            .font(.system(size: 36))
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .minimumScaleFactor(0.5)
                            .foregroundColor(AssetColor.textColor.color)
                        
                        VStack(spacing: 0) {
                            Text(SubscriptionPlanConstants.speakBuddyJapanese)
                                .font(Font.themeFont(size: 20))
                                .fontWeight(.bold)
                                .minimumScaleFactor(0.5)
                                .foregroundColor(AssetColor.textColor.color)
                                .frame(height: 30)
                            AssetGradientColor.gradientTextLinear
                                .mask {
                                    Text(SubscriptionPlanConstants.levelUpJapanese)
                                        .fontWeight(.black)
                                        .minimumScaleFactor(0.5)
                                        .font(Font.themeFont(size: 30))
                                }
                                .frame(height: 45)
                        }
                        
                        PrimaryButton {
                            // Sign on Action
                        }
                    }
                    
                    VStack(spacing: 0) {
                        Spacer()
                        let ratio = geometry.size.width / 2 / designScreenWidth
                        MediaContentView(datas: datas, ratio: ratio)
                        Spacer()
                    }
                }
            }
            
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    CircleCancelButton()
                    Spacer()
                }
                Spacer()
            }
        }
        .padding([.leading, .trailing])
        .background(
            AssetGradientColor.gradientBackgroundLinear
        )
    }
    
    var regularView: some View {
        ZStack {
            VStack(spacing: 0) {
                ScrollView {
                    Text(SubscriptionPlanConstants.title)
                        .font(.system(size: 36))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(AssetColor.textColor.color)
                        .padding(.top, 54)
                        .padding(.bottom, 33)

                    MediaContentView(datas: datas, ratio: 1)
                        .padding(.bottom, 30)
                    
                    VStack(spacing: 0) {
                        Text(SubscriptionPlanConstants.speakBuddyJapanese)
                            .font(Font.themeFont(size: 20))
                            .fontWeight(.bold)
                            .minimumScaleFactor(0.5)
                            .foregroundColor(AssetColor.textColor.color)
                        AssetGradientColor.gradientTextLinear
                            .mask {
                                Text(SubscriptionPlanConstants.levelUpJapanese)
                                    .fontWeight(.black)
                                    .minimumScaleFactor(0.5)
                                    .font(Font.themeFont(size: 30))
                            }
                            .frame(height: 45)
                    }
                }
                .scrollIndicators(.hidden)
                
                Spacer(minLength: 25)
                PrimaryButton {
                    // Sign on Action
                }
                .padding([.leading, .trailing])
                .padding(.bottom, 24)
            }
            
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    Spacer()
                    CircleCancelButton()
                }
                Spacer()
            }
            .padding(.trailing)
        }
        .padding([.leading, .trailing], 20)
        .background(
            AssetGradientColor.gradientBackgroundLinear
        )
    }
    
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
    
}
