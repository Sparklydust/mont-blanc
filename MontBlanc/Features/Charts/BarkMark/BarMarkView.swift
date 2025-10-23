//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct BarMarkView: View {

  var body: some View {
    List {
      MBNavigationLink(title: "Basic") {
        BarMark_Basic()
      }

      MBNavigationLink(title: "Width") {
        BarMark_Width()
      }

      MBNavigationLink(title: "Series") {
        BarMark_Series()
      }

      MBNavigationLink(title: "Interval") {
        BarMark_Interval()
      }

      MBNavigationLink(title: "Series Interval") {
        BarMark_SeriesInterval()
      }

      MBNavigationLink(title: "Series Side by Side") {
        BarMark_Series_SideBySide()
      }

      MBNavigationLink(title: "Corner Radius") {
        BarMark_CornerRadius()
      }

      MBNavigationLink(title: "Clip Shape") {
        BarMark_ClipShape()
      }
    }
  }
}

#Preview {
  BarMarkView()
}
