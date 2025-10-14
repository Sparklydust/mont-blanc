//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct LineMark_Interval: View {

  private let data = ChartIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.startValue)
      )

      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.endValue)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  LineMark_Interval()
}
