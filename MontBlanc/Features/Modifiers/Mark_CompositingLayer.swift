//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Mark_CompositingLayer: View {

  private let data = ChartDataModel.mockMonthData()
  private var selectedMonth = "Feb"

  var body: some View {
    Chart(data) { item in
      BarMark(
        x: .value("Label", item.label),
        y: .value("Value", item.value)
      )
      .compositingLayer { mark in
        composeMark(mark, isSelected: item.label == selectedMonth)
      }
    }
    .mbChartsContainer()
  }

  @ViewBuilder
  private func composeMark(
    _ mark: some View,
    isSelected: Bool
  ) -> some View {
    if isSelected {
      mark
        .offset(x: -5, y: -5)
        .shadow(color: .black, radius: 3, x: 5, y: 5)
    } else {
      mark
        .opacity(0.5)
        .blur(radius: 3)
    }
  }
}

#Preview {
  Mark_CompositingLayer()
}
