//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Animation_OneByOne_SectorMark: View {
  
  @State private var dataForChart: [ChartDataModel] = []
  
  private let fullData = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(dataForChart) { item in
      SectorMark(
        angle: .value("Value", item.value),
        angularInset: 4
      )
      .foregroundStyle(by: .value("Label", item.label))
    }
    .mbChartsContainer()
    .onAppear { triggerAnimation() }
  }
}

extension Animation_OneByOne_SectorMark {

  private func triggerAnimation() {
    for i in 0..<fullData.count {
      DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) * 0.4) {
        withAnimation(.easeInOut(duration: 0.4)) {
          dataForChart.append(fullData[i])
        }
      }
    }
  }
}

#Preview {
  Animation_OneByOne_SectorMark()
}
