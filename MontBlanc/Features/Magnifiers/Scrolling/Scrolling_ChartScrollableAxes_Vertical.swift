//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Scrolling_ChartScrollableAxes_Vertical: View {

  private let data = ChartDataModel.mockYearData(numberOfYears: 10)

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Value", item.value),
        y: .value("Label", item.label)
      )
    }
    .chartScrollableAxes(.vertical)
    .mbChartsContainer()
  }
}

#Preview {
  Scrolling_ChartScrollableAxes_Vertical()
}
