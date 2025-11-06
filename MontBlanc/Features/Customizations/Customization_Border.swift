//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Customization_Border: View {

  private let data = ChartDataModel.mockMonthData()

  var body: some View {
    Chart(data) { item in
      PointMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .symbol {
        Image(systemName: "star.fill")
          .font(.title3)
          .foregroundStyle(.orange)
      }
    }
    .mbChartsContainer()
    .background(.blue.mix(with: .black, by: 0.2).opacity(0.2))
    .overlay(.orange, in: .rect(cornerRadius: 8).stroke(style: .init(lineWidth: 4)))
    .clipShape(.rect(cornerRadius: 8))
    .padding()
  }
}

#Preview {
  Customization_Border()
}
