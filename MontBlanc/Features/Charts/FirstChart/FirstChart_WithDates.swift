//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct FirstChart_WithDates: View {

  private let data = ChartDateAndDoubleModel.mockData(months: 3)

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.date, unit: .month),
        y: .value("Value", item.value)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  FirstChart_WithDates()
}
