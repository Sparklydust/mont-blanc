//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct RectangleMark_Basic: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      RectangleMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  RectangleMark_Basic()
}
