//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Stroke: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks(stroke: .init(lineWidth: 1))

      AxisMarks(stroke: .init(lineWidth: 8, lineCap: .round, dash: [1, 16]))
    }
    .chartXAxis {
      AxisMarks(stroke: .init(lineWidth: 1, dash: [5, 5]))
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisMarks_Stroke()
}
