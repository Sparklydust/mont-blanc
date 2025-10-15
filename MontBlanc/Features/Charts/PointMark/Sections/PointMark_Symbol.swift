//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct PointMark_Symbol: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .symbol(item.value == 100 ? .asterisk : .circle)
      .symbolSize(by: .value("Value", item.value))
    }
    .mbChartsContainer()
  }
}

#Preview {
  PointMark_Symbol()
}
