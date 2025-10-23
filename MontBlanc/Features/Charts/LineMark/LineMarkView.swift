//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct LineMarkView: View {

  var body: some View {
    List {
      MBNavigationLink(title: "Basic") {
        LineMark_Basic()
      }

      MBNavigationLink(title: "Series") {
        LineMark_Series()
      }

      MBNavigationLink(title: "Interval") {
        LineMark_Interval()
      }

      MBNavigationLink(title: "Series Interval") {
        LineMark_SeriesInterval()
      }

      MBNavigationLink(title: "Line Style") {
        LineMark_LineStyle()
      }

      MBNavigationLink(title: "Line Style Series") {
        LineMark_LineStyle_Series()
      }

      MBNavigationLink(title: "Chart Line Style Scale") {
        LineMark_ChartLineStyleScale()
      }

      MBNavigationLink(title: "Chart Line Style Scale Dynamic") {
        LineMark_ChartLineStyleScale_Dynamic()
      }

      MBNavigationLink(title: "Interpolation") {
        LineMark_Interpolation()
      }
    }
  }
}

#Preview {
  LineMarkView()
}
