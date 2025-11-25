//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisTick_Parameters: View {

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

        AxisValueLabel()

        AxisTick(
          centered: true,
          length: 16,
          stroke: .init(lineWidth: 5)
        )
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisTick_Parameters()
}
