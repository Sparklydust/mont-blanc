//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_ChartOverlay: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartOverlay { _ in
      Text("DRAFT")
        .font(.system(size: 110, weight: .bold))
        .foregroundStyle(.tertiary)
        .rotationEffect(.degrees(-45))
    }
    .mbChartsContainer()
  }
}

#Preview {
  Customization_ChartOverlay()
}
