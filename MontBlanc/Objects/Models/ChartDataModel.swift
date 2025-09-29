//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Foundation

struct ChartDataModel: Identifiable {

  let id = UUID()
  let label: String
  let value: Int
}

extension ChartDataModel {

  static func mockMonthData() -> [ChartDataModel] {
    [
      ChartDataModel(label: "Jan", value: 20),
      ChartDataModel(label: "Feb", value: 10),
      ChartDataModel(label: "Mar", value: 30),
      ChartDataModel(label: "Apr", value: 40)
    ]
  }
}


extension ChartDataModel {

  static func mockQuarterData() -> [ChartDataModel] {
    [
      ChartDataModel(label: "Q1", value: 75),
      ChartDataModel(label: "Q2", value: 25),
      ChartDataModel(label: "Q3", value: 50),
      ChartDataModel(label: "Q4", value: 100)
    ]
  }
}
