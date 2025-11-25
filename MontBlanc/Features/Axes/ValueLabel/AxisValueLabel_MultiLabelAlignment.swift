//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisValueLabel_MultiLabelAlignment: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks {
        AxisGridLine()

        AxisTick()

        AxisValueLabel(multiLabelAlignment: .center)
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisValueLabel_MultiLabelAlignment()
}
