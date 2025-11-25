//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Intro: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks(
        format: .currency(code: "USD"),
        preset: .extended,
        position: .leading,
        values: .automatic(desiredCount: 5),
        stroke: .init(lineWidth: 5)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisMarks_Intro()
}
