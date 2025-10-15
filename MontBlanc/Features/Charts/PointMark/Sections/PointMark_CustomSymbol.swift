//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct PointMark_CustomSymbol: View {

  private let data = ChartDataModel.mockQuarterData()

  var body: some View {
    Chart(data) { item in
      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .symbol {
        if item.value >= 75 {
          Image(systemName: "star.fill")
            .font(.title3)
        } else {
          Image(systemName: "hand.thumbsdown.circle.fill")
            .foregroundStyle(.pink)
            .font(.subheadline)
        }
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  PointMark_CustomSymbol()
}
