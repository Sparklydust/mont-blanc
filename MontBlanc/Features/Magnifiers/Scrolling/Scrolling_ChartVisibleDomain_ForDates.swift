//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Scrolling_ChartVisibleDomain_ForDates: View {

  private let data = ChartDateAndDoubleModel.mockData(months: 10)

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.date, unit: .month),
        y: .value("Value", item.value)
      )
    }
    .chartScrollableAxes(.horizontal)
    .chartXVisibleDomain(length: 86400 * 30 * 3) // 86400 seconds is 24 hours, 30 days, 3 months
    .mbChartsContainer()
  }
}

#Preview {
  Scrolling_ChartVisibleDomain_ForDates()
}
