//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_AlignsMarkStylesWithPlotArea: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(
        .linearGradient(
          colors: [.pink, .green],
          startPoint: .bottom,
          endPoint: .top
        )
      )
      .alignsMarkStylesWithPlotArea()
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_AlignsMarkStylesWithPlotArea()
}
