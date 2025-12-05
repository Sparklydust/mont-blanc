//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Annotation_PositionHorizontal: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Value", item.value),
        y: .value("Label", item.label)
      )
      .annotation(position: .trailing) {
        Text(item.value.description)
          .font(.caption2)
          .foregroundStyle(.pink)
      }
      .annotation(position: .overlay) {
        Text(item.value.description)
          .font(.caption2)
          .foregroundStyle(.white)
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  Annotation_PositionHorizontal()
}
