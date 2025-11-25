//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisValueLabel_StringParameter: View {

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

        AxisValueLabel("Foo")
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisValueLabel_StringParameter()
}
