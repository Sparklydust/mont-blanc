//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct BubbleDataModel: Identifiable {

  let id = UUID()
  let xValue: String
  let yValue: Double
  let size: Double
  var color: Color = .blue
  var legendData = String()
}

extension BubbleDataModel {

  static func mockData() -> [BubbleDataModel] {
    [
      BubbleDataModel(xValue: "0-18", yValue: 18000, size: 100),
      BubbleDataModel(xValue: "19-29", yValue: 60000, size: 70),
      BubbleDataModel(xValue: "30-44", yValue: 80000, size: 90),
      BubbleDataModel(xValue: "45-59", yValue: 150000, size: 110),
      BubbleDataModel(xValue: "60-71", yValue: 180000, size: 70),
      BubbleDataModel(xValue: "72+", yValue: 40000, size: 50)
    ]
  }

  static func mockMovieData() -> [BubbleDataModel] {
    [
      BubbleDataModel(xValue: "2021", yValue: 220, size: 80, color: .orange, legendData: "Cybernetic Dawn"),
      BubbleDataModel(xValue: "2022", yValue: 300, size: 150, color: .green, legendData: "The Last Echo"),
      BubbleDataModel(xValue: "2023", yValue: 240, size: 120, color: .red, legendData: "Galaxy Drifters"),
      BubbleDataModel(xValue: "2023", yValue: 140, size: 70, color: .purple, legendData: "Ocean's Whisper"),
      BubbleDataModel(xValue: "2024", yValue: 180, size: 140, color: .blue, legendData: "Chronoscape")
    ]
  }
}
