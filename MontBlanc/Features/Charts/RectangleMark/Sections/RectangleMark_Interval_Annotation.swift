//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct RectangleMark_Interval_Annotation: View {

  private let data = ChartDataModel.mockMonthData()

  private var maxValue: Int {
    data.map(\.value).max() ?? .zero
  }

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(.blue)

      RectangleMark(
        yStart: .value("Start", maxValue),
        yEnd: .value("End", maxValue - 10)
      )
      .foregroundStyle(.green.opacity(0.1))

      RectangleMark(
        yStart: .value("Start", .zero),
        yEnd: .value("End", 10)
      )
      .foregroundStyle(.red.opacity(0.1))
    }
    .mbChartsContainer()
  }
}

#Preview {
  RectangleMark_Interval_Annotation()
}
