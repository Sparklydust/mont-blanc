//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct BarMarkView: View {

  var body: some View {
    List {
      NavigationLink {
        BarMark_Basic()
          .navigationTitle("Basic")
      } label: {
        Text("Basic")
      }

      NavigationLink {
        BarMark_SeriesInterval()
          .navigationTitle("Series Interval")
      } label: {
        Text("Series Interval")
      }

      NavigationLink {
        BarMark_Width()
          .navigationTitle("Width")
      } label: {
        Text("Width")
      }

      NavigationLink {
        BarMark_Interval()
          .navigationTitle("Interval")
      } label: {
        Text("Interval")
      }

      NavigationLink {
        BarMark_Series()
          .navigationTitle("Series")
      } label: {
        Text("Series")
      }

      NavigationLink {
        BarMark_Series_SideBySide()
          .navigationTitle("Series Side by Side")
      } label: {
        Text("Series Side by Side")
      }

      NavigationLink {
        BarMark_CornerRadius()
          .navigationTitle("Corner Radius")
      } label: {
        Text("Corner Radius")
      }

      NavigationLink {
        BarMark_ClipShape()
          .navigationTitle("Clip Shape")
      } label: {
        Text("Clip Shape")
      }
    }
  }
}

#Preview {
  BarMarkView()
}
