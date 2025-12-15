//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Animation_FromZero: View {

  @State var yAxisValues = [0, 0, 0, 0]

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data.indices, id: \.self) { index in
      BarMark(
        x: .value("Label", data[index].label),
        y: .value("Value", yAxisValues[index])
      )
    }
    .chartYScale(domain: 0...(data.map(\.value).max() ?? 60))
    .mbChartsContainer()
    .onAppear {
      withAnimation { yAxisValues = data.map(\.value) }
    }
  }
}

#Preview {
  Animation_FromZero()
}
