//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AreaMark_Series: View {

  private let data = ChartSeriesDataModel.mockYearMonthData()

  var body: some View {
    Chart(data) { item in
      AreaMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value),
        stacking: .standard
      )
      .foregroundStyle(by: .value("Series", item.series))
    }
    .mbChartsContainer()
  }
}

#Preview {
  AreaMark_Series()
}
