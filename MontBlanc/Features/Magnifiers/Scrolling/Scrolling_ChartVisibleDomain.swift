//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Scrolling_ChartVisibleDomain: View {

  private let data = ChartDataModel.mockYearData(numberOfYears: 10)

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Value", item.value),
        y: .value("Label", item.label)
      )
    }
    .chartScrollableAxes(.vertical)
    .chartYVisibleDomain(length: 3.5)
    .mbChartsContainer()
  }
}

#Preview {
  Scrolling_ChartVisibleDomain()
}
