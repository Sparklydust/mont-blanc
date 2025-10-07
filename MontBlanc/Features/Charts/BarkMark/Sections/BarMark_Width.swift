//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct BarMark_Width: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Labels", item.label),
        y: .value("Values", item.value),
        width: 24,
        height: 24
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  BarMark_Width()
}
