//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisValueLabel_ConditionalFormatting: View {

  private let data = ChartIntervalModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        yStart: .value("Start", item.startValue),
        yEnd: .value("End", item.endValue)
      )
    }
    .chartYAxis {
      AxisMarks { axisValue in
        AxisGridLine()

        AxisTick()

        AxisValueLabel()
          .font(.headline)
          .foregroundStyle(getColor(for: axisValue))
      }
    }
    .mbChartsContainer()
  }
}

// MARK: - Color
extension AxisValueLabel_ConditionalFormatting {

  private func getColor(for axisValue: AxisValue) -> Color {
    let value = axisValue.as(Int.self) ?? .zero

    switch value {
    case let value where value > .zero: return .green
    case let value where value == .zero: return .primary
    default: return .red
    }
  }
}

#Preview {
  AxisValueLabel_ConditionalFormatting()
}
