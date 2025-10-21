//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct RectangleMark_Interval: View {

  private let data = ChartIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      RectangleMark(
        xStart: .value("Start", item.startValue),
        xEnd: .value("End", item.endValue),
        y: .value("Value", item.label)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  RectangleMark_Interval()
}
