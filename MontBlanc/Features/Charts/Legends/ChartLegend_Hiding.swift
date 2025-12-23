//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct ChartLegend_Hiding: View {

  private let data = ChartSeriesDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value),
        series: .value("Series", item.series)
      )
      .foregroundStyle(by: .value("Series", item.series))
    }
    .chartLegend(.hidden)
    .mbChartsContainer()
  }
}

#Preview {
  ChartLegend_Hiding()
}
