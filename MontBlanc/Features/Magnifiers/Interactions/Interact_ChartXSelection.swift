//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Interact_ChartXSelection: View {

  @State private var selectedXValue: String?
  @State private var lastSelected = String()

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    VStack {
      Chart(data) { item in
        BarMark(
          x: .value("Label", item.label),
          y: .value("Value", item.value)
        )
        .blur(radius: selectedXValue == item.label.description || selectedXValue == .none ? 0 : 10)
      }
      .chartXSelection(value: $selectedXValue)
      .onChange(of: selectedXValue) { _, newValue in
        guard let newValue, newValue != lastSelected else { return }
        lastSelected = newValue
      }
      .mbChartsContainer()
      
      Text(lastSelected)
    }
  }
}

#Preview {
  Interact_ChartXSelection()
}
