//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_ChartForegroundStyleScale_Dictionary: View {

  private let data = ChartSeriesDataModel.mockYearMonthData()
  private let gradient1 = LinearGradient(
    colors: [.blue, .red],
    startPoint: .topLeading,
    endPoint: .bottomTrailing
  )
  private let gradient2 = LinearGradient(
    colors: [.blue, .green],
    startPoint: .topTrailing,
    endPoint: .bottomLeading
  )

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value),
        stacking: .standard
      )
      .foregroundStyle(by: .value("Series", item.series))
    }
    .chartForegroundStyleScale(
      [
        "2025": gradient1,
        "2026": gradient2
      ]
    )
    .mbChartsContainer()
  }
}

#Preview {
  Customization_ChartForegroundStyleScale_Dictionary()
}
