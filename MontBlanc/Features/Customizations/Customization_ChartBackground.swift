//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_ChartBackground: View {

  private let data = ChartDataModel.mockMonthData()
  private let gradient = LinearGradient(
    colors: [.orange.opacity(0.5), .purple.opacity(0.25)],
    startPoint: .topLeading,
    endPoint: .bottomTrailing
  )

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
    }
    .chartBackground(alignment: .topLeading) { _ in
      Image(.bmsLogo)
        .resizable()
        .frame(width: 128, height: 128)
        .grayscale(1)
        .opacity(0.4)
    }
    .padding(16)
    .background(gradient, in: .rect(cornerRadius: 16))
    .mbChartsContainer()
  }
}

#Preview {
  Customization_ChartBackground()
}
