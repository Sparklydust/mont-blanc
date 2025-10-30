//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_ForegroundStyle_Gradient_Combining: View {
  
  private let data = ChartDataModel.mockMonthData()
  
  var body: some View {
    Chart(data) { item in
      AreaMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(
        .linearGradient(
          colors: [.pink.opacity(0.3), .clear],
          startPoint: .top,
          endPoint: .bottom
        )
      )
      
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(.pink)
      
      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .symbol {
        Image(systemName: "smallcircle.filled.circle.fill")
          .foregroundStyle(.white, .pink)
          .font(.caption2.weight(.light))
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_ForegroundStyle_Gradient_Combining()
}
