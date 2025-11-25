//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct GridLines_Color: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxis {
      AxisMarks {
        AxisGridLine(
          centered: true,
          stroke: .init(lineWidth: 2, dash: [5, 5])
        )
        .foregroundStyle(.pink)

        AxisValueLabel()
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  GridLines_Color()
}
