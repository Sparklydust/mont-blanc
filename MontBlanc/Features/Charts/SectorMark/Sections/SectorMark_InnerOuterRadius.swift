//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct SectorMark_InnerOuterRadius: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    VStack {
      Chart(data) { item in
        SectorMark(
          angle: .value("Value", item.value),
          innerRadius: 120,
          angularInset: 4
        )
        .foregroundStyle(by: .value("Label", item.label))
      }

      Chart(data) { item in
        SectorMark(
          angle: .value("Value", item.value),
          outerRadius: 100,
          angularInset: 4
        )
        .foregroundStyle(by: .value("Label", item.label))
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
    SectorMark_InnerOuterRadius()
}
