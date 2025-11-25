//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Preset_Options: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value),
        width: 25
      )
    }
    .chartYAxis {
      AxisMarks(preset: .extended)
    }
    .chartXAxis {
      AxisMarks(preset: .aligned)
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisMarks_Preset_Options()
}
