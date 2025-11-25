//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct ChartXAxis_Parts: View {

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
        AxisTick()
      }
    }
    .chartYAxis(.hidden)
    .mbChartsContainer()
  }
}

#Preview {
  ChartXAxis_Parts()
}
