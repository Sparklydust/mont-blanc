//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct LineMark_LineStyle_Series: View {

  private let data = ChartSeriesDataModel.mockYearMonthData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .lineStyle(by: .value("Series", item.series))
      .foregroundStyle(by: .value("Series", item.series))
    }
    .mbChartsContainer()
  }
}

#Preview {
  LineMark_LineStyle_Series()
}
