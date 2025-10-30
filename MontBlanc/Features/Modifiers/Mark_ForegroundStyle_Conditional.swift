//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_ForegroundStyle_Conditional: View {

  private let data = ChartIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        yStart: .value("Start", item.startValue),
        yEnd: .value("End", item.endValue)
      )
      .cornerRadius(20)
      .foregroundStyle(item.startValue < item.endValue ? .green : .pink)
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_ForegroundStyle_Conditional()
}
