//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct FirstChart_LayeringTips: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart {
      ForEach(data) { item in
        BarMark(
          x: PlottableValue.value("Label", item.label),
          y: PlottableValue.value("Value", item.value)
        )
      }

      ForEach(data) { item in
        LineMark(
          x: PlottableValue.value("Label", item.label),
          y: PlottableValue.value("Value", item.value)
        )
        .foregroundStyle(.red)
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  FirstChart_LayeringTips()
}
