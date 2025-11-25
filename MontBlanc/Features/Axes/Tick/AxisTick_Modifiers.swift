//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisTick_Modifiers: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxis {
      AxisMarks {
        AxisGridLine()

        AxisValueLabel()

        AxisTick(stroke: .init(lineWidth: 1))
          .foregroundStyle(.red)
          .offset(y: -16)
      }
    }
    .chartYAxis {
      AxisMarks {
        AxisGridLine()

        AxisValueLabel()

        AxisTick(
          length: 8,
          stroke: .init(lineWidth: 1)
        )
        .foregroundStyle(.green)
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisTick_Modifiers()
}
