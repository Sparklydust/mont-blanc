//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Values_Hardcode: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks(values: [0, 15, 30, 45])
    }
    .chartXAxis {
      AxisMarks(values: ["Dec", "Jan", "Feb", "Mar", "Apr", "May"])
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisMarks_Values_Hardcode()
}
