//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct FirstChart_BarkMark: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: PlottableValue.value("Label", item.label),
        y: PlottableValue.value("Value", item.value)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  FirstChart_BarkMark()
}
