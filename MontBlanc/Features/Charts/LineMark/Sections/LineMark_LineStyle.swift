//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct LineMark_LineStyle: View {

  private let data = ChartDataModel.mockYearData(numberOfYears: 7)

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .lineStyle(
        StrokeStyle(
          lineWidth: 8,
          lineCap: .round,
          lineJoin: .round
        )
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  LineMark_LineStyle()
}
