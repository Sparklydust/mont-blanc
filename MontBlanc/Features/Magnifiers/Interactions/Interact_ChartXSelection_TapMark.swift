//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Interact_ChartXSelection_TapMark: View {

  @State private var selectedXValue: String?
  @State private var selectedMark = String()

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .opacity(selectedMark.isEmpty || item.label == selectedMark ? 1 : 0.3)
      .annotation(position: .overlay) {
        if item.label == selectedMark {
          Text(item.label == selectedMark ? item.value.description : String())
            .foregroundStyle(.white)
            .fixedSize()
        }
      }
    }
    .chartXSelection(value: $selectedXValue)
    .onChange(of: selectedXValue) { _, newValue in
      guard let newValue else { return }
      withAnimation { selectedMark = newValue }
    }
    .mbChartsContainer()

    Text(selectedMark.isEmpty ? "No Selection" : "Selected Bar: \(selectedMark)")

    Button("Reset Selection") {
      selectedMark.removeAll()
    }
    .buttonStyle(.borderedProminent)
    .disabled(selectedMark.isEmpty)
  }
}

#Preview {
  Interact_ChartXSelection_TapMark()
}
