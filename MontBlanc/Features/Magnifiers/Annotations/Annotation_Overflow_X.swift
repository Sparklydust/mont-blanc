//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Annotation_Overflow_X: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .annotation(spacing: .zero) {
        if item.label == "Jan" {
          Rectangle()
            .fill(.purple)
            .frame(width: 4, height: 16)
        }
      }
      .annotation(spacing: 16, overflowResolution: .init(x: .fit)) {
        if item.label == "Jan" {
          Text("Business Started")
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
  Annotation_Overflow_X()
}
