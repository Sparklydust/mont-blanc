//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct ChartLegend_Customization: View {

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
    .chartLegend(
      position: .bottom,
      alignment: .center,
      spacing: 50
    )
    .mbChartsContainer()
  }
}

#Preview {
  ChartLegend_Customization()
}
