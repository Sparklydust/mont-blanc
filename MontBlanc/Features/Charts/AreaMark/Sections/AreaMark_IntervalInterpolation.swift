//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AreaMark_IntervalInterpolation: View {

  private let data = ChartIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      AreaMark(
        x: .value("Label", item.label),
        yStart: .value("Start", item.startValue),
        yEnd: .value("End", item.endValue)
      )
      .interpolationMethod(.linear)

      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.startValue)
      )
      .foregroundStyle(.green)

      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.endValue)
      )
      .foregroundStyle(.pink)

    }
    .mbChartsContainer()
  }
}

#Preview {
  AreaMark_IntervalInterpolation()
}
