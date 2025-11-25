//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Content_YAxis: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks(position: .leading)

      AxisMarks(position: .trailing) { axisValue in
        if let value = axisValue.as(Double.self) {
          switch value {
          case 40: AxisValueLabel("Great!")
          case 30: AxisValueLabel("Good")
          case 20: AxisValueLabel("Average")
          case 1..<19: AxisValueLabel("Bad")
          case 50: AxisValueLabel("This will never be drawn")
          default: AxisValueLabel("")
          }
        }
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisMarks_Content_YAxis()
}
