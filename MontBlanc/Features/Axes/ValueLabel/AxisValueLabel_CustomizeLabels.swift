//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisValueLabel_CustomizeLabels: View {

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

        AxisTick()

        AxisValueLabel()
          .font(.title2.weight(.semibold))
          .foregroundStyle(.orange)
          .offset(x: 0, y: -4)
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisValueLabel_CustomizeLabels()
}
