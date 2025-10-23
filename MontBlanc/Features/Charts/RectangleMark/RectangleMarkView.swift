//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct RectangleMarkView: View {

  var body: some View {
    List {
      MBNavigationLink(title: "Basic") {
        RectangleMark_Basic()
      }

      MBNavigationLink(title: "Width & Height") {
        RectangleMark_WidthHeight()
      }

      MBNavigationLink(title: "Corner Radius") {
        RectangleMark_CornerRadius()
      }

      MBNavigationLink(title: "Series") {
        RectangleMark_Series()
      }

      MBNavigationLink(title: "Interval") {
        RectangleMark_Interval()
      }

      MBNavigationLink(title: "Series Interval") {
        RectangleMark_SeriesInterval()
      }

      MBNavigationLink(title: "Interval Annotation") {
        RectangleMark_Interval_Annotation()
      }
    }
  }
}

#Preview {
  RectangleMarkView()
}
