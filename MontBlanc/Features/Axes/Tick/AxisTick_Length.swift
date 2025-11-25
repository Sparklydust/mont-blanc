//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisTick_Length: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks {
        AxisGridLine()

        AxisValueLabel(centered: true)

        AxisTick(
          centered: true,
          length: .longestLabel(extendPastBy: 8),
          stroke: .init(lineWidth: 2)
        )
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisTick_Length()
}
