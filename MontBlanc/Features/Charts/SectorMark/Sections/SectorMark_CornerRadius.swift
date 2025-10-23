//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct SectorMark_CornerRadius: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    VStack {
      Chart(data) { item in
        SectorMark(
          angle: .value("Value", item.value),
          angularInset: 4
        )
        .foregroundStyle(by: .value("Label", item.label))
        .cornerRadius(16)
      }
    }
    .mbChartsContainer()
  }
}
#Preview {
  SectorMark_CornerRadius()
}
