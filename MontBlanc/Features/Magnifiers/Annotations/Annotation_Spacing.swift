//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Annotation_Spacing: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .annotation(spacing: 16) {
        Text(item.value.description)
          .font(.caption2)
          .foregroundStyle(.pink)
      }
      .annotation(
        position: .overlay,
        alignment: .bottomTrailing,
        spacing: 16
      ) {
        Text(item.value.description)
          .font(.caption2)
          .foregroundStyle(.white)
        }
    }
    .mbChartsContainer()
  }
}

#Preview {
  Annotation_Spacing()
}
