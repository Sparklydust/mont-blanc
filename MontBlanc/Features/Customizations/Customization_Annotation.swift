//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_Annotation: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .annotation(position: .top) {
        VStack {
          if item.value > 20 {
            Image(systemName: "arrowtriangle.up.fill")
              .foregroundStyle(.green)
          }

          Text(String(item.value))
            .font(.subheadline.weight(.semibold))
            .foregroundStyle(.indigo)

          if item.value < 20 {
            Image(systemName: "arrowtriangle.down.fill")
              .foregroundStyle(.pink)
          }
        }
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  Customization_Annotation()
}
