//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct PointMarkView: View {

  var body: some View {
    List {
      MBNavigationLink(title: "Basic") {
        PointMark_Basic()
      }

      MBNavigationLink(title: "Series") {
        PointMark_Series()
      }

      MBNavigationLink(title: "Interval") {
        PointMark_Interval()
      }

      MBNavigationLink(title: "Series Interval") {
        PointMark_SeriesInterval()
      }

      MBNavigationLink(title: "Size By Value") {
        PointMark_SizeByValue()
      }

      MBNavigationLink(title: "Symbol") {
        PointMark_Symbol()
      }

      MBNavigationLink(title: "Custom Symbol") {
        PointMark_CustomSymbol()
      }

      MBNavigationLink(title: "Series Symbol By") {
        PointMark_Series_SymbolBy()
      }
    }
  }
}

#Preview {
  PointMarkView()
}
