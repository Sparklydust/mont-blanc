//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_Offset: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .offset(
        x: item.label == "Mar" ? -5 : 0,
        y: item.label == "Mar" ? -10 : 0
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_Offset()
}
