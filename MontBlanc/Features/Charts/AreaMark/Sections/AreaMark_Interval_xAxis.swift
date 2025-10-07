//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AreaMark_Interval_xAxis: View {

  private let data = ChartIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      AreaMark(
        xStart: .value("Start", item.startValue),
        xEnd: .value("End", item.endValue),
        y: .value("Label", item.label)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  AreaMark_Interval_xAxis()
}
