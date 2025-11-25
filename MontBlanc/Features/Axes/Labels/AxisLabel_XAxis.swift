//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisLabel_XAxis: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxisLabel("Chart Text at Bottom") // Defaults to bottom leading
    .chartXAxisLabel("© 2025 BMS", alignment: .trailing)
    .chartXAxisLabel("Chart Text at Top", position: .top)
    .chartXAxisLabel("Chart Text - Highest", position: .top, spacing: 32)
    .mbChartsContainer()
    .border(.pink)
    .padding(4)
  }
}

#Preview {
  AxisLabel_XAxis()
}
