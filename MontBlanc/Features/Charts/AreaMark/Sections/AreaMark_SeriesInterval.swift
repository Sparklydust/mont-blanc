//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AreaMark_SeriesInterval: View {

  private let data = ChartSeriesIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      AreaMark(
        x: .value("Label", item.label),
        yStart: .value("Start", item.startValue),
        yEnd: .value("End", item.endValue)
      )
      .foregroundStyle(by: .value("Series", item.series))
    }
    .mbChartsContainer()
  }
}

#Preview {
  AreaMark_SeriesInterval()
}
