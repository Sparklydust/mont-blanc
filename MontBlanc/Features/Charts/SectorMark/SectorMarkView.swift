//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct SectorMarkView: View {

  var body: some View {
    List {
      MBNavigationLink(title: "Basic") {
        SectorMark_Basic()
      }

      MBNavigationLink(title: "Foreground Style") {
        SectorMark_ForegroundStyle()
      }

      MBNavigationLink(title: "Inner Outer Radius") {
        SectorMark_InnerOuterRadius()
      }

      MBNavigationLink(title: "Corner Radius") {
        SectorMark_CornerRadius()
      }
    }
  }
}

#Preview {
  SectorMarkView()
}
