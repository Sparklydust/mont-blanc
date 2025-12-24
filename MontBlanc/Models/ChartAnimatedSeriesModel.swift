//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Foundation

struct ChartAnimatedSeriesModel: Identifiable {

  let id: String
  let year: String
  let value: Int
}

// MARK: - Mock Data
extension ChartAnimatedSeriesModel {

  static func mockYearData() -> [ChartAnimatedSeriesModel] {
    let months = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"]
    let years = ["2020", "2021", "2022", "2023", "2024"]

    return years.flatMap { year in
      months.map { month in
        ChartAnimatedSeriesModel(
          id: month,
          year: year,
          value: Int.random(in: 100...900)
        )
      }
    }
  }
}
 
