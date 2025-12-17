//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Interact_ChartXSelection_DateRange: View {

  @State private var selectedRange: ClosedRange<Date>?

  private var data = ChartDateAndDoubleModel.mockData(months: 4)
  private var rangeText: String { rangeTextDefinition() }

  var body: some View {
    VStack {
      Chart(data) { item in
        BarMark(
          x: .value("Label", item.date, unit: .month),
          y: .value("Value", item.value)
        )
      }
      .chartXSelection(range: $selectedRange)
    }
    .mbChartsContainer()

    Text(rangeText)
      .padding()
  }
}

extension Interact_ChartXSelection_DateRange {

  private func rangeTextDefinition() -> String {
    guard let range = selectedRange
    else { return "Select range with 2-finger drag gesture" }

    let formatter = DateFormatter()
    formatter.dateStyle = .medium

    return "\(formatter.string(from: range.lowerBound)) - \(formatter.string(from: range.upperBound))"
  }
}

#Preview {
  Interact_ChartXSelection_DateRange()
}
