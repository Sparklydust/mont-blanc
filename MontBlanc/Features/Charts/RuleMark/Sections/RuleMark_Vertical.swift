//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct RuleMark_Vertical: View {

  private let data = ChartIntervalModel.mockWeekData()

  var body: some View {
    Chart(data) { item in
      RuleMark(
        x: .value("Label", item.label),
        yStart: .value("Start", item.startValue),
        yEnd: .value("End", item.endValue)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  RuleMark_Vertical()
}
