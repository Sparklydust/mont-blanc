//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct AxisLabel_WithContent: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartXAxisLabel(position: .top, spacing: 32) {
      Text("Transaction Count")
        #if os(macOS)
        .foregroundStyle(Color(NSColor.labelColor))
        #else
        .foregroundStyle(Color(UIColor.label))
        #endif
        .font(.headline)
    }
    .chartXAxisLabel(position: .top) {
      Text("First Quarter Report")
        .font(.caption2.italic())
    }
    .chartXAxisLabel(position: .bottom) {
      Label("© 2025 BMS", systemImage: "heart.fill")
        .font(.caption2)
        .fixedSize()
    }
    .mbChartsContainer()
  }
}

#Preview {
  AxisLabel_WithContent()
}
