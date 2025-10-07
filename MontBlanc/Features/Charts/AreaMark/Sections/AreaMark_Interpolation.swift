//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AreaMark_Interpolation: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      AreaMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .interpolationMethod(.linear)
    }
    .mbChartsContainer()
  }
}

#Preview {
  AreaMark_Interpolation()
}
