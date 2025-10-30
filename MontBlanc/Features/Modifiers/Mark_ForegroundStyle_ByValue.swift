//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_ForegroundStyle_ByValue: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(by: .value("Value", item.value))
    }
    .mbChartsContainer()

    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(by: .value("Label", item.label))
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_ForegroundStyle_ByValue()
}
