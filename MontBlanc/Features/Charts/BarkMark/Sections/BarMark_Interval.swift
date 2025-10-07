//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct BarMark_Interval: View {

  let data = ChartIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        yStart: .value("Start", item.startValue),
        yEnd: .value("End", item.endValue)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  BarMark_Interval()
}
