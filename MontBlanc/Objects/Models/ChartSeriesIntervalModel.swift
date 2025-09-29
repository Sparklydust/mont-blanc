//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Foundation

struct ChartSeriesIntervalModel: Identifiable {

  let id = UUID()
  let series: String
  let label: String
  let startValue: Int
  let endValue: Int
}

// MARK: - Mock Data
extension ChartSeriesIntervalModel {

  static func mockWeekData() -> [ChartSeriesIntervalModel] {
    return [
      ChartSeriesIntervalModel(series: "Week 1", label: "Mon", startValue: 10, endValue: 90),
      ChartSeriesIntervalModel(series: "Week 1", label: "Tue", startValue: 60, endValue: 100),
      ChartSeriesIntervalModel(series: "Week 1", label: "Wed", startValue: 90, endValue: 70),
      ChartSeriesIntervalModel(series: "Week 1", label: "Thu", startValue: 80, endValue: 20),
      ChartSeriesIntervalModel(series: "Week 1", label: "Fri", startValue: 40, endValue: 110),
      ChartSeriesIntervalModel(series: "Week 1", label: "Sat", startValue: 120, endValue: 60),
      ChartSeriesIntervalModel(series: "Week 1", label: "Sun", startValue: 70, endValue: 50),

      ChartSeriesIntervalModel(series: "Week 2", label: "Mon", startValue: 20, endValue: 50),
      ChartSeriesIntervalModel(series: "Week 2", label: "Tue", startValue: 50, endValue: 110),
      ChartSeriesIntervalModel(series: "Week 2", label: "Wed", startValue: 100, endValue: 50),
      ChartSeriesIntervalModel(series: "Week 2", label: "Thu", startValue: 60, endValue: 40),
      ChartSeriesIntervalModel(series: "Week 2", label: "Fri", startValue: 30, endValue: 100),
      ChartSeriesIntervalModel(series: "Week 2", label: "Sat", startValue: 100, endValue: 80),
      ChartSeriesIntervalModel(series: "Week 2", label: "Sun", startValue: 70, endValue: 50),
    ]
  }
}
