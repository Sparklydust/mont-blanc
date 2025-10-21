//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct RectangleMark_WidthHeight: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      RectangleMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value),
        width: 40,
        height: 40
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  RectangleMark_WidthHeight()
}
