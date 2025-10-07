//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct BarMark_Series_SideBySide: View {

  private let data = ChartSeriesDataModel.mockYearMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(by: .value("Series", item.series))
      .position(by: .value("Series", item.series), axis: .horizontal, span: 70)
    }
    .mbChartsContainer()
  }
}

#Preview {
  BarMark_Series_SideBySide()
}
