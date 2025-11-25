//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisMarks_Values_DesiredCount: View {

  private let data = ChartDataModel.mockMonthData()
  @State private var yAxisValueCount: Double = 5

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYAxis {
      AxisMarks(values: .automatic(desiredCount: Int(yAxisValueCount)))
    }
    .chartXAxis {
      AxisMarks(values: .automatic)
    }
    .mbChartsContainer()

    VStack(spacing: 12) {
      Text("Y Axis desired count: \(Int(yAxisValueCount))")

      HStack {
        Text("2")

        Slider(value: $yAxisValueCount, in: 2...10, step: 1)

        Text("10")
      }
    }
    .padding()
  }
}

#Preview {
  AxisMarks_Values_DesiredCount()
}
