//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Values_Stride: View {
  
  private let data = ChartDataModel.mockMonthData()
  
  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks(values: .stride(by: 8))
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisMarks_Values_Stride()
}
