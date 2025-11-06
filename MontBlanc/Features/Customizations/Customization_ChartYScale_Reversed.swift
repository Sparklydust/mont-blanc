//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_ChartYScale_Reversed: View {
  
  private let data = ChartDataModel.mockNegativeMonthData()
  
  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYScale(domain: .automatic(includesZero: true, reversed: true))
    .mbChartsContainer()
  }
}

#Preview {
  Customization_ChartYScale_Reversed()
}
