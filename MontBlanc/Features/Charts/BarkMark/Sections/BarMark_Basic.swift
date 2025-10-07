//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct BarMark_Basic: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Labels", item.label),
        y: .value("Values", item.value)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  BarMark_Basic()
}
