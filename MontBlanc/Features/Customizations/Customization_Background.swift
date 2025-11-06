//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_Background: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(.green.mix(with: .blue, by: 0.25))
    }
    .mbChartsContainer()
    .background(.green.opacity(0.10), in: .rect(cornerRadius: 8))
    .padding()
  }
}

#Preview {
  Customization_Background()
}
