//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_ChartYScale_Padding: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      PointMark(
        x: .value("Value", item.label),
        y: .value("Value", item.value)
      )
      .symbolSize(400)
    }
    .chartYScale(range: .plotDimension(startPadding: 20, endPadding: 20))
    .chartPlotStyle { $0.border(.pink, width: 1) }
    .mbChartsContainer()
  }
}

#Preview {
  Customization_ChartYScale_Padding()
}
