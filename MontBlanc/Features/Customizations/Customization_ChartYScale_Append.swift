//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_ChartYScale_Append: View {

  private let data = ChartDataModel.mockCategoryData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartYScale(domain: .automatic(dataType: Int.self) { domain in
      domain.append(200)
    })
    .mbChartsContainer()
  }
}

#Preview {
  Customization_ChartYScale_Append()
}
