//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Scrolling_ChartScrollableAxes: View {

  private let data = ChartDataModel.mockYearData(numberOfYears: 10)

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartScrollableAxes(.horizontal)
    .mbChartsContainer()
  }
}

#Preview {
  Scrolling_ChartScrollableAxes()
}
