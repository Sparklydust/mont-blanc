//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Interact_ChartYSelection: View {

  @State private var selectedYValue: String?

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Value", item.value),
        y: .value("Label", item.label)
      )
      .blur(radius: selectedYValue == item.label.description || selectedYValue == .none ? 0 : 10)
    }
    .chartYSelection(value: $selectedYValue)
    .mbChartsContainer()
  }
}

#Preview {
  Interact_ChartYSelection()
}
