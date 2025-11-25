//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Format_Options: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks(format: Decimal.FormatStyle.Percent())
    }
    .chartXAxis {
      AxisMarks(format: Decimal.FormatStyle.number.precision(.fractionLength(2)))
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisMarks_Format_Options()
}
