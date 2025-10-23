//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct FirstChartView: View {

  var body: some View {
    List {
      MBNavigationLink(title: "Bark Mark") {
        FirstChart_BarkMark()
      }

      MBNavigationLink(title: "Line Mark") {
        FirstChart_LineMark()
      }

      MBNavigationLink(title: "Layering Tips") {
        FirstChart_LayeringTips()
      }

      MBNavigationLink(title: "With Dates") {
        FirstChart_WithDates()
      }
    }
  }
}

#Preview {
  FirstChartView()
}
