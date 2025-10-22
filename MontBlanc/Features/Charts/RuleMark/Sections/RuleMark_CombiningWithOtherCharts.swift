//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct RuleMark_CombiningWithOtherCharts: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )

      RuleMark(y: .value("Target", 25))
        .lineStyle(.init(lineWidth: 2, dash: [5]))
        .foregroundStyle(.pink)

      RuleMark(x: .value("Month", "Feb"))
        .lineStyle(.init(lineWidth: 2, dash: [5]))
        .foregroundStyle(.green)
    }
    .mbChartsContainer()
  }
}

#Preview {
  RuleMark_CombiningWithOtherCharts()
}
