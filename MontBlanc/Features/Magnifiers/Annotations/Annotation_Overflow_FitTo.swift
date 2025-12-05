//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Annotation_Overflow_FitTo: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .annotation(spacing: .zero) {
        if item.label == "Apr" {
          Rectangle()
            .fill(.purple)
            .frame(width: 4, height: 16)
        }
      }
      .annotation(
        spacing: 16,
        overflowResolution: .init(x: .fit(to: .chart))) {
          if item.label == "Apr" {
            Text("Business Ended")
              .font(.caption2)
              .foregroundStyle(.white)
              .padding()
              .background(.purple.gradient, in: .rect(cornerRadius: 8))
          }
        }
    }
    .mbChartsContainer()
  }
}

#Preview {
  Annotation_Overflow_FitTo()
}
