//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_ChartXScale_Sort: View {

  private let data = ChartDataModel.mockCategoryData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXScale(domain: .automatic(dataType: String.self) { domain in
      domain.sort(using: .localizedStandard)
      domain.append("New")
    })
    .mbChartsContainer()
  }
}

#Preview {
  Customization_ChartXScale_Sort()
}
