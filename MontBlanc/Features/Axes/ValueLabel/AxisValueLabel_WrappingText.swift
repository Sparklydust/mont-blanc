//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisValueLabel_WrappingText: View {

  @ScaledMetric private var labelHeight: CGFloat = 40
  private let data = ChartDataModel.mockMultiWordLabelData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxis {
      AxisMarks { axisValue in
        AxisGridLine()

        AxisTick()

        AxisValueLabel {
          if let text = axisValue.as(String.self) {
            Text(text)
              .frame(height: labelHeight, alignment: .top)
              .lineLimit(2)
          }
        }
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisValueLabel_WrappingText()
}
