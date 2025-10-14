//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct LineMark_ChartLineStyleScale: View {

  private let data = ChartSeriesDataModel.mockYearMonthData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value),
        series: .value("Series", item.series)
      )
      .foregroundStyle(by: .value("Series", item.series))
      .lineStyle(by: .value("Series", item.series))
    }
    .chartLineStyleScale(
      [
        "2025": StrokeStyle(lineWidth: 2, dash: [5]),
        "2026": StrokeStyle(lineWidth: 3)
      ]
    )
    .mbChartsContainer()
  }
}

#Preview {
  LineMark_ChartLineStyleScale()
}
