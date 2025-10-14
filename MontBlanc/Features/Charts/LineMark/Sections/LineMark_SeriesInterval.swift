//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct LineMark_SeriesInterval: View {

  private let data = ChartSeriesIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.startValue)
      )
      .foregroundStyle(by: .value("Series", item.series))

      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.endValue)
      )
      .foregroundStyle(by: .value("Series", item.series))
    }
    .mbChartsContainer()
  }
}

#Preview {
  LineMark_SeriesInterval()
}
