//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_Combined: View {

  private let data = ChartDataModel.mockMonthData()
  private var selectedMonth = "Feb"

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .offset(
        x: item.label == selectedMonth ? -5 : 0,
        y: item.label == selectedMonth ? -5 : 0
      )
      .foregroundStyle(.blue.opacity(item.label == selectedMonth ? 1 : 0.5))
      .blur(radius: item.label == selectedMonth ? 0 : 3)
      .shadow(
        color: item.label == selectedMonth ? .black : .clear,
        radius: item.label == selectedMonth ? 3 : 0,
        x: 5,
        y: 5
      )
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_Combined()
}
