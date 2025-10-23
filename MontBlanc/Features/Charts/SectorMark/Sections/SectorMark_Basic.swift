//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct SectorMark_Basic: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    VStack {
      Chart(data) { item in
        SectorMark(angle: .value("Value", item.value))
      }

      Chart(data) { item in
        SectorMark(
          angle: .value("Value", item.value),
          angularInset: 4
        )
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  SectorMark_Basic()
}
