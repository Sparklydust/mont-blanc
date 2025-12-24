//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct BubbleChartView: View {

  private let data = BubbleDataModel.mockData()

  var body: some View {
    VStack {
      Text("Size of Expenses by Age Group")
        .font(.title2)

      Chart(data) { item in
        PointMark(
          x: .value("X Axis", item.xValue),
          y: .value("Y Axis", item.yValue)
        )
        .opacity(.zero)
        .annotation(spacing: .zero) {
          Circle()
            .fill(.blue.opacity(0.3))
            .frame(width: item.size)
            .offset(y: item.size / 2)
        }
      }
      .chartYAxis {
        AxisMarks(
          format: Decimal.FormatStyle.Currency.currency(code: "USD")
            .precision(.fractionLength(.zero))
        )
      }
      .mbChartsContainer()
    }
  }
}

#Preview {
  BubbleChartView()
}
