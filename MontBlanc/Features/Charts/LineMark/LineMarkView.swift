//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct LineMarkView: View {

  var body: some View {
    List {
      NavigationLink {
        LineMark_Basic()
          .navigationTitle("Basic")
      } label: {
        Text("Basic")
      }

      NavigationLink {
        LineMark_ChartLineStyleScale()
          .navigationTitle("Chart Line Style Scale")
      } label: {
        Text("Chart Line Style Scale")
      }

      NavigationLink {
        LineMark_ChartLineStyleScale_Dynamic()
          .navigationTitle("Chart Line Style Scale Dynamic")
      } label: {
        Text("Chart Line Style Scale Dynamic")
      }

      NavigationLink {
        LineMark_Interpolation()
          .navigationTitle("Interpolation")
      } label: {
        Text("Interpolation")
      }

      NavigationLink {
        LineMark_Interval()
          .navigationTitle("Interval")
      } label: {
        Text("Interval")
      }

      NavigationLink {
        LineMark_LineStyle()
          .navigationTitle("Line Style")
      } label: {
        Text("Line Style")
      }

      NavigationLink {
        LineMark_LineStyle_Series()
          .navigationTitle("Line Style Series")
      } label: {
        Text("Line Style Series")
      }

      NavigationLink {
        LineMark_Series()
          .navigationTitle("Series")
      } label: {
        Text("Series")
      }

      NavigationLink {
        LineMark_SeriesInterval()
          .navigationTitle("Series Interval")
      } label: {
        Text("Series Interval")
      }
    }
  }
}

#Preview {
  LineMarkView()
}
