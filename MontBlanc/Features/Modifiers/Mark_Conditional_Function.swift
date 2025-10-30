//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_Conditional_Function: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(colorBy(label: item.label))
    }
    .mbChartsContainer()
  }

  private func colorBy(label: String) -> Color {
    switch label {
    case "Jan": .pink
    case "Feb": .blue
    case "Mar": .green
    default: .orange
    }
  }
}

#Preview {
  Mark_Conditional_Function()
}
