//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Foundation

struct ChartSeriesDataModel: Identifiable {

  let id = UUID()
  let series: String
  let label: String
  let value: Int
}

extension ChartSeriesDataModel {

  static func mockYearMonthData() -> [ChartSeriesDataModel] {
    [
      ChartSeriesDataModel(series: "2025", label: "SEPT", value: 100),
      ChartSeriesDataModel(series: "2025", label: "OCT", value: 200),
      ChartSeriesDataModel(series: "2025", label: "NOV", value: 300),
      ChartSeriesDataModel(series: "2025", label: "DEC", value: 250),

      ChartSeriesDataModel(series: "2026", label: "SEPT", value: 200),
      ChartSeriesDataModel(series: "2026", label: "OCT", value: 80),
      ChartSeriesDataModel(series: "2026", label: "NOV", value: 350),
      ChartSeriesDataModel(series: "2026", label: "DEC", value: 50)
    ]
  }

  static func mockQuarterData() -> [ChartSeriesDataModel] {
    [
      ChartSeriesDataModel(series: "Current Year", label: "Q1", value: 75),
      ChartSeriesDataModel(series: "Current Year", label: "Q2", value: 25),
      ChartSeriesDataModel(series: "Current Year", label: "Q3", value: 50),
      ChartSeriesDataModel(series: "Current Year", label: "Q4", value: 100),

      ChartSeriesDataModel(series: "Last Year", label: "Q1", value: 25),
      ChartSeriesDataModel(series: "Last Year", label: "Q2", value: 50),
      ChartSeriesDataModel(series: "Last Year", label: "Q4", value: 75)
    ]
  }
}
