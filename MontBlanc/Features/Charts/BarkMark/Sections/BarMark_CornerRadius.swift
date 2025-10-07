//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct BarMark_CornerRadius: View {

  private let data = ChartDataModel.mockMonthData()
  private let interval = ChartIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .cornerRadius(16)
    }
    .mbChartsContainer()

    Chart(interval) { item in
      BarMark(
        x: .value("Label", item.label),
        yStart: .value("Start", item.startValue),
        yEnd: .value("End", item.endValue)
      )
      .cornerRadius(16)
    }
    .mbChartsContainer()
  }
}

#Preview {
  BarMark_CornerRadius()
}
