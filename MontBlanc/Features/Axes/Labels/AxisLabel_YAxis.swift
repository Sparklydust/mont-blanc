//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisLabel_YAxis: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxisLabel(position: .trailing) {
      Text("Number of Units")
        .font(.caption2.italic())
    }
    .chartYAxisLabel(position: .top, alignment: .leading) {
      Text("Number of Units")
        .font(.caption2.italic())
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisLabel_YAxis()
}
