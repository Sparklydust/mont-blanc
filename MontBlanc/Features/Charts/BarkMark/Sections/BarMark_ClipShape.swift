//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct BarMark_ClipShape: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .clipShape(.rect(cornerRadius: 12))
    }
    .mbChartsContainer()
  }
}

#Preview {
  BarMark_ClipShape()
}
