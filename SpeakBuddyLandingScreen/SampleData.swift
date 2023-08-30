//
//  SampleData.swift
//  SpeakBuddyLandingScreen
//
//  Created by Evan Liang on 8/29/23.
//

import Foundation

struct StatisticData: Identifiable {
    
    let id: Int
    let periodsString: String
    let count: Double
    let targetCount: Double
    
    static let sampleDatas: [StatisticData] = [
        StatisticData(id: 0, periodsString: "現在", count: 0, targetCount: 66),
        StatisticData(id: 1, periodsString: "3ヶ月", count: 0, targetCount: 100),
        StatisticData(id: 2, periodsString: "1年", count: 0, targetCount: 220),
        StatisticData(id: 3, periodsString: "2年", count: 0, targetCount: 300)
    ]
}
