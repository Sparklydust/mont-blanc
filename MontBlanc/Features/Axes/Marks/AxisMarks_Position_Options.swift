//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Position_Options: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxis {
      AxisMarks(position: .bottom)
      AxisMarks(position: .top)
    }
    .chartYAxis {
      AxisMarks(position: .leading)
      AxisMarks(position: .trailing)
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisMarks_Position_Options()
}
