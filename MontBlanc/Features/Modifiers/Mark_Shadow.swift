//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_Shadow: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .shadow(
        color: .blue.opacity(0.4),
        radius: 5,
        x: 4,
        y: -4
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_Shadow()
}
