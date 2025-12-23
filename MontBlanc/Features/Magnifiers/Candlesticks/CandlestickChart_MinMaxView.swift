//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct CandlestickChart_MinMaxView: View {

  @Environment(\.colorScheme) private var colorScheme

  private let data = CandlestickModel.mockDataAlt()
  private var yMin: Double {
    (data.map { (item: CandlestickModel) in item.low }.min() ?? .zero) - 4
  }
  private var yMax: Double {
    (data.map { (item: CandlestickModel) in item.high }.max() ?? .zero) + 4
  }

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Date", item.date, unit: .day),
        yStart: .value("Hight", item.high),
        yEnd: .value("Low", item.low),
        width: 1
      )
      .foregroundStyle(Color(UIColor.label))

      BarMark(
        x: .value("Date", item.date, unit: .day),
        yStart: .value("Open", item.open),
        yEnd: .value("Close", item.close),
        width: 24
      )
      .cornerRadius(.zero)
      .foregroundStyle(item.close >= item.open ? .black : .white)
      .annotation(position: .overlay) {
        Rectangle()
          .stroke(colorScheme == .light ? .black : .white, lineWidth: 1)
          .padding(-4)
      }
    }
    .chartYScale(domain: yMin...yMax)
    .chartScrollableAxes(.horizontal)
    .chartXVisibleDomain(length: 86400 * 4) // 4 days
    .chartScrollTargetBehavior(.valueAligned(unit: 1))
    .chartYScale(domain: 140...200)
    .mbChartsContainer()
  }
}

#Preview {
    CandlestickChart_MinMaxView()
}
