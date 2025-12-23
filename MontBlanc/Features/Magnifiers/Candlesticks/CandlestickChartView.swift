//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct CandlestickChartView: View {

  private let data = CandlestickModel.mockData()

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
      .foregroundStyle(item.close >= item.open ? .green : .red)
    }
    .chartScrollableAxes(.horizontal)
    .chartXVisibleDomain(length: 86400 * 4) // 4 days
    .chartScrollTargetBehavior(.valueAligned(unit: 1))
    .chartYScale(domain: 140...200)
    .mbChartsContainer()
  }
}

#Preview {
  CandlestickChartView()
}
