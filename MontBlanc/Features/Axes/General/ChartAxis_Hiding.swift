//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct ChartAxis_Hiding: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxis(.hidden)
    .chartYAxis { /* Empty closure == .hidden */ }
    .mbChartsContainer()
  }
}

#Preview {
  ChartAxis_Hiding()
}
