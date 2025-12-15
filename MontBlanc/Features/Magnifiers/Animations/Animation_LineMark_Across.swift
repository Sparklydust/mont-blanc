//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Animation_LineMark_Across: View {

  @State private var maxWidth: CGFloat = .zero

  private let data = ChartDataModel.mockYearData()

  var body: some View {
    Chart(data) { item in
      LineMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .foregroundStyle(.green)
    }
    .chartXAxis {
      AxisMarks {
        AxisGridLine(centered: true)

        AxisValueLabel()
      }
    }
    .chartPlotStyle { plotArea in
      plotArea
        .mask(alignment: .leading) {
          Rectangle()
            .frame(maxWidth: maxWidth)
        }
    }
    .onAppear {
      withAnimation(.linear(duration: 2).delay(1)) {
        self.maxWidth = .infinity
      }
    }
    .mbChartsContainer()
  }
}

#Preview {
  Animation_LineMark_Across()
}
