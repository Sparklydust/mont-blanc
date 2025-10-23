//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct AreaMarkView: View {

  var body: some View {
    List {
      MBNavigationLink(title: "Basic") {
        AreaMark_Basic()
      }

      MBNavigationLink(title: "Series") {
        AreaMark_Series()
      }

      MBNavigationLink(title: "Interval") {
        AreaMark_Interval()
      }

      MBNavigationLink(title: "Interval xAxis") {
        AreaMark_Interval_xAxis()
      }

      MBNavigationLink(title: "Series Interval") {
        AreaMark_SeriesInterval()
      }

      MBNavigationLink(title: "Interpolation") {
        AreaMark_Interpolation()
      }

      MBNavigationLink(title: "Interval Interpolation") {
        AreaMark_IntervalInterpolation()
      }
    }
  }
}

#Preview {
  AreaMarkView()
}
