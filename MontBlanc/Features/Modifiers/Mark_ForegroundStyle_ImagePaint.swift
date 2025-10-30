//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_ForegroundStyle_ImagePaint: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(
        ImagePaint(image: Image(.chartBackground)).opacity(0.7)
      )
      .alignsMarkStylesWithPlotArea()
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_ForegroundStyle_ImagePaint()
}
