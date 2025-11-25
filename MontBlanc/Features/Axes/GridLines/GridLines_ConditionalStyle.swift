//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct GridLines_ConditionalStyle: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks { axisValue in
        let doubleValue = axisValue.as(Double.self)!

        AxisGridLine(
          stroke: .init(
            dash: doubleValue <= 20 ? [8, 4] : [],
            dashPhase: .zero
          )
        )
        .foregroundStyle(doubleValue <= 20 ? .pink : .green)

        AxisValueLabel()
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  GridLines_ConditionalStyle()
}
