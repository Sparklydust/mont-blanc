//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_Blur: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart {
      ForEach(data) { item in
        BarMark(
          x: .value("Label", item.label),
          y: .value("Value", item.value)
        )
        .blur(radius: 8)
      }

      ForEach(data) { item in
        LineMark(
          x: .value("Label", item.label),
          y: .value("Value", item.value)
        )
        .lineStyle(.init(lineWidth: 16, lineCap: .round))
        .foregroundStyle(.pink)
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_Blur()
}
