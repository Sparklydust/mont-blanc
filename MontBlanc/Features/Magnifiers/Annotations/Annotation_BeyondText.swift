//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Annotation_BeyondText: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .annotation(position: .top) {
        if item.value == 10 {
          Image(systemName: "exclamationmark.triangle.fill")
            .foregroundStyle(.yellow)
        }

        if item.value == 40 {
          Image(systemName: "arrow.down.right")
            .foregroundStyle(.green)
            .offset(x: -20, y: .zero)
        }
      }

      LineMark(
        x: .value("Label", item.label),
        y: .value("value", item.value)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  Annotation_BeyondText()
}
