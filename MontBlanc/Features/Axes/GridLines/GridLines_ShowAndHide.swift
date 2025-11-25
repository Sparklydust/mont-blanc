//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct GridLines_ShowAndHide: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxis {
      AxisMarks {
        AxisGridLine()
      }
    }
    .chartYAxis {
      AxisMarks {
        AxisValueLabel()

        AxisTick()
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  GridLines_ShowAndHide()
}
