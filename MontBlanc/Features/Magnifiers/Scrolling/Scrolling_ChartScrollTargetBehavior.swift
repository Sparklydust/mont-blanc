//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Scrolling_ChartScrollTargetBehavior: View {

  private let data = ChartDataModel.mockYearData(numberOfYears: 15)

  var body: some View {
    VStack {
      Chart(data) { item in
        BarMark(
          x: .value("Label", item.label),
          y: .value("Value", item.value)
        )
      }
      .chartScrollableAxes(.horizontal)
      .chartXVisibleDomain(length: 4.5)
      .chartScrollTargetBehavior(.valueAligned(unit: 1))
      .mbChartsContainer()
    }
  }
}

#Preview {
  Scrolling_ChartScrollTargetBehavior()
}
