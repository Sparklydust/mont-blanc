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

  static func mockCategoryData() -> [ChartDataModel] {
    [
      ChartDataModel(label: "iPhone", value: 109),
      ChartDataModel(label: "iPad", value: 40),
      ChartDataModel(label: "MacBook", value: 72),
      ChartDataModel(label: "AirPod", value: 28)
    ]
  }

  static func mockMonthData() -> [ChartDataModel] {
    [
      ChartDataModel(label: "Jan", value: 20),
      ChartDataModel(label: "Feb", value: 10),
      ChartDataModel(label: "Mar", value: 30),
      ChartDataModel(label: "Apr", value: 40)
    ]
  }

  static func mockMultiWordLabelData() -> [ChartDataModel] {
    [
      ChartDataModel(label: "Urban Homes", value: 97),
      ChartDataModel(label: "City Living", value: 22),
      ChartDataModel(label: "Countryside", value: 69),
      ChartDataModel(label: "Forest Retreat", value: 51)
    ]
  }

  static func mockNegativeMonthData() -> [ChartDataModel] {
    [
      ChartDataModel(label: "May", value: -50),
      ChartDataModel(label: "June", value: -100),
      ChartDataModel(label: "July", value: -70),
      ChartDataModel(label: "Aug", value: -40)
    ]
  }

  static func mockQuarterData() -> [ChartDataModel] {
    [
      ChartDataModel(label: "Q1", value: 75),
      ChartDataModel(label: "Q2", value: 25),
      ChartDataModel(label: "Q3", value: 50),
      ChartDataModel(label: "Q4", value: 100)
    ]
  }

  static func mockYearData() -> [ChartDataModel] {
    [
      ChartDataModel(label: "Jan", value: 20),
      ChartDataModel(label: "Feb", value: 10),
      ChartDataModel(label: "Mar", value: 30),
      ChartDataModel(label: "Apr", value: 40),
      ChartDataModel(label: "May", value: 20),
      ChartDataModel(label: "Jun", value: 80),
      ChartDataModel(label: "Jul", value: 60),
      ChartDataModel(label: "Aug", value: 100)
    ]
  }

  static func mockYearData(numberOfYears: Int = 10) -> [ChartDataModel] {
    var data: [ChartDataModel] = []
    for year in 2000..<(2000 + numberOfYears) {
      let value = Int.random(in: 20...100)
      data.append(ChartDataModel(label: String(year), value: value))
    }
    return data
  }
}
