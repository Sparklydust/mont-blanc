//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Interact_ChartXSelection_WithRuleMark: View {

  @State private var selectedXValue: String?

  private let data = ChartDataModel.mockYearData(numberOfYears: 6)

  var body: some View {
    Chart {
      ForEach(data) { item in
        LineMark(
          x: .value("Label", item.label),
          y: .value("Value", item.value)
        )
        .interpolationMethod(.cardinal)
      }

      if let selectedXValue {
        RuleMark(x: .value("Label", selectedXValue))
          .offset(yStart: -10)
          .foregroundStyle(.blue.opacity(0.2))
          .annotation(
            position: .top,
            spacing: .zero,
            overflowResolution: .init(x: .fit, y: .disabled)
          ) {
            Text(selectedXValue)
              .fontWeight(.bold)
              .padding()
              .background(.blue.opacity(0.2).gradient, in: .rect(cornerRadius: 8))
          }
      }
    }
    .chartXSelection(value: $selectedXValue)
    .mbChartsContainer()
  }
}

#Preview {
  Interact_ChartXSelection_WithRuleMark()
}
