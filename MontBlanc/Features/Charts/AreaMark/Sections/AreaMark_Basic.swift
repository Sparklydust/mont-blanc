//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AreaMark_Basic: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    VStack(spacing: 40) {
      Chart(data) { item in
        AreaMark(
          x: .value("Label", item.label),
          y: .value("Value", item.value)
        )
      }
      .mbChartsContainer()
    }
  }
}

#Preview {
  AreaMark_Basic()
}
