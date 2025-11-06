//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_ChartForegroundStyleScale: View {

  private let data = ChartSeriesDataModel.mockYearMonthData()
  private var uniqueValues: [String] {
    data
      .map((\.series))
      .reduce(into: [String]()) { result, series in
        guard !result.contains(series) else { return }
        result.append(series)
      }
  }

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
      domain: uniqueValues,
      range: [.green, .pink, .blue, .yellow]
    )
    .mbChartsContainer()
  }
}

#Preview {
  Customization_ChartForegroundStyleScale()
}
