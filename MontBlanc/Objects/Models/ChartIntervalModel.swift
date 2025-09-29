//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Foundation

struct ChartIntervalModel: Identifiable {

  let id = UUID()
  let label: String
  let startValue: Int
  let endValue: Int
}

// MARK: - Mock Data
extension ChartIntervalModel {

  static func mockWeekData() -> [ChartIntervalModel] {
    [
      ChartIntervalModel(label: "Mon", startValue: 10, endValue: 90),
      ChartIntervalModel(label: "Tue", startValue: 60, endValue: 100),
      ChartIntervalModel(label: "Wed", startValue: 90, endValue: 70),
      ChartIntervalModel(label: "Thu", startValue: 80, endValue: 20),
      ChartIntervalModel(label: "Fri", startValue: 40, endValue: 110),
      ChartIntervalModel(label: "Sat", startValue: 120, endValue: 60),
      ChartIntervalModel(label: "Sun", startValue: 70, endValue: 50)
    ]
  }

  static func mockMonthData() -> [ChartIntervalModel] {
    [
      ChartIntervalModel(label: "Jun", startValue: -10, endValue: 90),
      ChartIntervalModel(label: "Jul", startValue: -60, endValue: 100),
      ChartIntervalModel(label: "Aug", startValue: -90, endValue: 70),
      ChartIntervalModel(label: "Sep", startValue: -40, endValue: 20),
    ]
  }
}
