//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct BubbleChart_WithLegendView: View {

  private let data = BubbleDataModel.mockMovieData()

  var body: some View {
    VStack {
      Text("Movie Revenue")
        .font(.title2)

      Chart(data) { item in
        PointMark(
          x: .value("X Axis", item.xValue),
          y: .value("Y Axis", item.yValue)
        )
        .opacity(.zero)
        .foregroundStyle(by: .value("Series", item.legendData))
        .annotation(spacing: .zero) {
          Circle()
            .fill(item.color.opacity(0.3))
            .frame(width: item.size)
            .offset(y: item.size / 2)
        }
      }
      .chartLegend {
        LazyVGrid(
          columns: Array(repeating: GridItem(), count: 2),
          alignment: .leading,
          spacing: 8
        ) {
          ForEach(data) { item in
            Label {
              Text(item.legendData)
                .foregroundStyle(.primary)
            } icon: {
              Image(systemName: "circle.fill")
                .foregroundStyle(item.color.opacity(0.3))
            }
          }
        }
        .font(.caption)
      }
      .chartYScale(domain: 100...400)
      .mbChartsContainer()
    }
  }
}

#Preview {
  BubbleChart_WithLegendView()
}
