//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct PointMark_Interval: View {

  private let data = ChartIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.startValue)
      )
      .foregroundStyle(.green)

      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.endValue)
      )
      .foregroundStyle(.red)
    }
    .mbChartsContainer()
  }
}

#Preview {
  PointMark_Interval()
}
