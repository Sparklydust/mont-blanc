//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Animation_OneByOne: View {

  @State var yAxisValues = [0, 0, 0, 0]

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data.indices, id: \.self) { index in
      BarMark(
        x: .value("Label", data[index].label),
        y: .value("Value", yAxisValues[index])
      )
    }
    .chartYScale(domain: 0...40)
    .mbChartsContainer()
    .task { await triggerAnimation() }
  }
}

extension Animation_OneByOne {

  private func triggerAnimation() async {
    for index in data.indices {
      withAnimation {
        yAxisValues[index] = data[index].value
      }
      try? await Task.sleep(for: .milliseconds(300))
    }
  }
}

#Preview {
  Animation_OneByOne()
}
