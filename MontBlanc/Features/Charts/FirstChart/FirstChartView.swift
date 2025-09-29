//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct FirstChartView: View {

  var body: some View {
    List {
      NavigationLink {
        FirstChart_BarkMark()
          .navigationTitle("Bark Mark")
      } label: {
        Text("Bark Mark")
      }

      NavigationLink {
        FirstChart_LineMark()
          .navigationTitle("Line Mark")
      } label: {
        Text("Line Mark")
      }

      NavigationLink {
        FirstChart_LayeringTips()
          .navigationTitle("Layering Tips")
      } label: {
        Text("Layering Tips")
      }

      NavigationLink {
        FirstChart_WithDates()
          .navigationTitle("With Dates")
      } label: {
        Text("With Dates")
      }
    }
  }
}

#Preview {
  FirstChartView()
}
