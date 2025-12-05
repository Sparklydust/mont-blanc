//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Annotation_Adding: View {

  private let data = ChartDataModel.mockMonthData()
  private let radialGradient = RadialGradient(
    colors: [.orange, .clear],
    center: .center,
    startRadius: .zero,
    endRadius: 16
  )

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )

      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .opacity(.zero)
      .annotation {
        Circle()
          .fill(radialGradient)
          .frame(width: 24, height: 24)
          .offset(x: 0, y: 20)
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  Annotation_Adding()
}
