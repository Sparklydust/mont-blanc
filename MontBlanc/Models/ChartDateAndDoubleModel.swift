//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Foundation

struct ChartDateAndDoubleModel: Identifiable {

  let id = UUID()
  let date: Date
  let value: Double
}

extension ChartDateAndDoubleModel {

  static func mockData(months: Int = 5) -> [ChartDateAndDoubleModel] {
    var data: [ChartDateAndDoubleModel] = []
    let calendar = Calendar(identifier: .gregorian)
    let currentDate = Date()

    for month in 0..<months {
      data.append(
        ChartDateAndDoubleModel(
          date: calendar.date(byAdding: .month, value: month, to: currentDate)!,
          value: .random(in: 0...1000)
        )
      )
    }
    return data
  }
}
