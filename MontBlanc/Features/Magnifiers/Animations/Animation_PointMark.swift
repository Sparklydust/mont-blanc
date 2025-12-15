//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Animation_PointMark: View {

  @State private var selectedValue: Int = .zero
  @State private var phaseIn = [false, false, false, false]

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data.indices, id: \.self) { index in
      PointMark(
        x: .value("Label", data[index].label),
        y: .value("Value", data[index].value)
      ).symbolSize(phaseIn[index] ? 1000 : 0)
        .opacity(phaseIn[index] ? 1 : 0)
    }
    .chartYScale(domain: 0...120)
    .mbChartsContainer()
    .task { await triggerAnimation() }
  }
}

extension Animation_PointMark {

  private func triggerAnimation() async {
    for index in data.indices {
      withAnimation(.spring(dampingFraction: 0.4).delay(0.5)) {
        phaseIn[index] = true
      }
      try? await Task.sleep(for: .milliseconds(500))
    }
  }
}

#Preview {
  Animation_PointMark()
}
