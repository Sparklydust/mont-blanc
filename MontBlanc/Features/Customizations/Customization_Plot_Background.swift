//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_Plot_Background: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(.green.mix(with: .blue, by: 0.25))
    }
    .chartPlotStyle { plotArea in
      plotArea
        .background(.mint.opacity(0.1))
    }
    .mbChartsContainer()
  }
}

#Preview {
  Customization_Plot_Background()
}
