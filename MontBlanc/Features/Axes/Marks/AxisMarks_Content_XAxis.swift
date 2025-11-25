//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Content_XAxis: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxis {
      AxisMarks(position: .top) { axisValue in
        switch axisValue.index {
        case 0: AxisValueLabel("Month 1")
        case 1: AxisValueLabel("Month 2")
        case 2: AxisValueLabel("Month 3")
        case 3: AxisValueLabel("Month 4")
        default: AxisValueLabel("")
        }
      }

      AxisMarks(position: .bottom)
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisMarks_Content_XAxis()
}
