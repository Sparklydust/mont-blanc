//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_ChartYScale: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .symbolSize(400)
    }
    .chartYScale(domain: [0, 60])
    .mbChartsContainer()
  }
}

#Preview {
  Customization_ChartYScale()
}
