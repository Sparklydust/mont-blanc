//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Charts
import SwiftUI

struct Animation_ChangingValues: View {

  @State private var selectedYear = "2020"

  private let data = ChartAnimatedSeriesModel.mockYearData()
  private var filteredData: [ChartAnimatedSeriesModel] {
    data.filter { $0.year == selectedYear }
  }
  private var uniqueYears: [String] {
    Array(Set(data.map(\.year))).sorted()
  }

  var body: some View {
    VStack {
      Picker("Year", selection: $selectedYear.animation()) {
        ForEach(uniqueYears, id: \.self) { year in
          Text(year)
        }
      }
      .pickerStyle(.segmented)
      .padding()

      Chart(filteredData) { item in
        LineMark(
          x: .value("Month", item.id),
          y: .value("Value", item.value)
        )
      }
      .chartYScale(domain: 0...1000)
      .padding()
    }
  }
}

#Preview {
  Animation_ChangingValues()
}
