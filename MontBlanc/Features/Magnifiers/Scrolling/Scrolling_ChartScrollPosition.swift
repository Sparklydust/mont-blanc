//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Scrolling_ChartScrollPosition: View {

  @State private var scrollPosition = String()

  private let data = ChartDataModel.mockYearData(numberOfYears: 15)

  var body: some View {
    VStack {
      Chart(data) { item in
        BarMark(
          x: .value("Label", item.label),
          y: .value("Value", item.value)
        )
      }
      .chartScrollableAxes(.horizontal)
      .chartXVisibleDomain(length: 4.5)
      .chartScrollPosition(x: $scrollPosition)
      .mbChartsContainer()

      Text("Scroll Position: \(scrollPosition)")

      HStack {
        Button("Jump to First Item") {
          scrollPosition = data.first?.label ?? String()
        }

        Button("Jump to Last Item") {
          scrollPosition = data.last?.label ?? String()
        }
      }
      .buttonStyle(.borderedProminent)
    }
  }
}

#Preview {
  Scrolling_ChartScrollPosition()
}
