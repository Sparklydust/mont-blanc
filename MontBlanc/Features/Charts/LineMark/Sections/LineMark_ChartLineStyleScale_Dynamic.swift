//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct LineMark_ChartLineStyleScale_Dynamic: View {

  private let data = ChartSeriesDataModel.mockYearMonthData()
  private var uniqueValues: [String] {
    data
      .map(\.series)
      .reduce(into: [String]()) { result, series in
        guard !result.contains(series) else { return }
        result.append(series)
      }
  }

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value),
        series: .value("Series", item.series)
      )
      .foregroundStyle(by: .value("Series", item.series))
      .lineStyle(by: .value("Series", item.series))
    }
    .chartLineStyleScale(
      domain: uniqueValues,
      range: [
        StrokeStyle(lineWidth: 2, dash: [5]),
        StrokeStyle(lineWidth: 3)
      ]
    )
    .mbChartsContainer()
  }
}

#Preview {
  LineMark_ChartLineStyleScale_Dynamic()
}
