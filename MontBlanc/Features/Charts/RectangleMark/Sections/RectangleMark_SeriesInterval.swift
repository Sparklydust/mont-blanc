//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct RectangleMark_SeriesInterval: View {

  private let data = ChartSeriesIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      RectangleMark(
        xStart: .value("Start", item.startValue),
        xEnd: .value("End", item.endValue),
        y: .value("Value", item.label)
      )
      .foregroundStyle(by: .value("Series", item.series))
    }
    .mbChartsContainer()
  }
}

#Preview {
  RectangleMark_SeriesInterval()
}
