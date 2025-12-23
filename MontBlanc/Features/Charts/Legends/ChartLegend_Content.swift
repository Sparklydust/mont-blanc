//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct ChartLegend_Content: View {

  private let data = ChartSeriesDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value),
        series: .value("Series", item.series)
      )
      .foregroundStyle(by: .value("Series", item.series))
    }
    .chartLegend(alignment: .center, spacing: 50) {
      HStack(spacing: 24) {
        ForEach(data.uniqueSeries(), id: \.self) { series in
          Label {
            Text(series)
              .padding(.leading, -4)
              .foregroundStyle(.primary)
          } icon: {
            Image(systemName: "square.fill")
              .foregroundStyle(series.color())
          }
        }
      }
      .font(.caption)
    }
    .mbChartsContainer()
  }
}

extension Array where Element == ChartSeriesDataModel {
  
  func uniqueSeries() -> [String] {
    var series: [String] = []
    for item in self {
      if !series.contains(item.series) {
        series.append(item.series)
      }
    }
    return series
  }
}

extension String {

  func color() -> Color {
    switch self {
    case "Current Year": .purple
    case "Last Year": .mint
    default: .gray
    }
  }
}

#Preview {
  ChartLegend_Content()
}
