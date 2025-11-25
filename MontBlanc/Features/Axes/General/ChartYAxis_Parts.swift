//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct ChartYAxis_Parts: View {

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
        AxisTick()
      }
    }
    .chartXAxis(.hidden)
    .mbChartsContainer()
  }
}

#Preview {
  ChartYAxis_Parts()
}
