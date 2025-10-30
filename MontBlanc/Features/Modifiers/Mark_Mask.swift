//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_Mask: View {
  
  private let data = ChartDataModel.mockMonthData()
  
  var body: some View {
    Chart {
      ForEach(data) { item in
        AreaMark(
          x: .value("Label", item.label),
          y: .value("Value", item.value)
        )
      }
      .mask {
        ForEach(data) { item in
          BarMark(
            x: .value("Label", item.label),
            y: .value("Value", item.value)
          )
        }
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  Mark_Mask()
}
