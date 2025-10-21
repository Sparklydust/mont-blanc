//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct RectangleMarkView: View {

  var body: some View {
    List {
      NavigationLink {
        RectangleMark_Basic()
          .navigationTitle("Basic")
      } label: {
        Text("Basic")
      }

      NavigationLink {
        RectangleMark_WidthHeight()
          .navigationTitle("Width & Height")
      } label: {
        Text("Width & Height")
      }

      NavigationLink {
        RectangleMark_CornerRadius()
          .navigationTitle("Corner Radius")
      } label: {
        Text("Corner Radius")
      }

      NavigationLink {
        RectangleMark_Series()
          .navigationTitle("Series")
      } label: {
        Text("Series")
      }

      NavigationLink {
        RectangleMark_Interval()
          .navigationTitle("Interval")
      } label: {
        Text("Interval")
      }

      NavigationLink {
        RectangleMark_SeriesInterval()
          .navigationTitle("Series Interval")
      } label: {
        Text("Series Interval")
      }

      NavigationLink {
        RectangleMark_Interval_Annotation()
          .navigationTitle("Interval Annotation")
      } label: {
        Text("Interval Annotation")
      }
    }
  }
}

#Preview {
  RectangleMarkView()
}
