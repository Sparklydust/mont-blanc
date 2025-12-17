//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Interact_ChartAngleSelection: View {

  @State private var selectedAngle: Int?
  @State private var selectedDataItem: ChartDataModel?

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    VStack {
      Chart(data) { item in
        SectorMark(
          angle: .value("Value", item.value),
          angularInset: 4
        )
        .foregroundStyle(by: .value("Label", item.label))
        .opacity(item.value == selectedDataItem?.value || selectedAngle == .none ? 1 : 0.5)
        .annotation(position: .overlay) {
          if item.value == selectedDataItem?.value {
            Text(selectedDataItem?.label ?? String())
          }
        }
      }
      .chartAngleSelection(value: $selectedAngle)
      .mbChartsContainer()
      .onChange(of: selectedAngle) {
        selectedDataItem = getDataItem(from: $1)
      }
    }
  }
}

extension Interact_ChartAngleSelection {

  private func getDataItem(from angle: Int?) -> ChartDataModel? {
    guard let angle else { return .none }

    var runningTotal = 0

    return data.first { item in
      runningTotal += item.value
      return angle <= runningTotal
    }
  }
}

#Preview {
  Interact_ChartAngleSelection()
}
