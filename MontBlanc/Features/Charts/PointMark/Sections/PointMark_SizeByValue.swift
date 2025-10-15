//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct PointMark_SizeByValue: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .symbolSize(by: .value("Value", item.value))
    }
    .mbChartsContainer()
  }
}

#Preview {
  PointMark_SizeByValue()
}
