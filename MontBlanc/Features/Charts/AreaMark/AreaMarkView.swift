//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct AreaMarkView: View {

  var body: some View {
    List {
      NavigationLink {
        AreaMark_Basics()
          .navigationTitle("Basics")
      } label: {
        Text("Basics")
      }

      NavigationLink {
        AreaMark_Series()
          .navigationTitle("Series")
      } label: {
        Text("Series")
      }

      NavigationLink {
        AreaMark_Interval()
          .navigationTitle("Interval")
      } label: {
        Text("Interval")
      }

      NavigationLink {
        AreaMark_Interval_xAxis()
          .navigationTitle("Interval xAxis")
      } label: {
        Text("Interval xAxis")
      }

      NavigationLink {
        AreaMark_SeriesInterval()
          .navigationTitle("Series Interval")
      } label: {
        Text("Series Interval")
      }

      NavigationLink {
        AreaMark_Interpolation()
          .navigationTitle("Interpolation")
      } label: {
        Text("Interpolation")
      }

      NavigationLink {
        AreaMark_IntervalInterpolation()
          .navigationTitle("Interval Interpolation")
      } label: {
        Text("Interval Interpolation")
      }
    }
  }
}

#Preview {
  AreaMarkView()
}
