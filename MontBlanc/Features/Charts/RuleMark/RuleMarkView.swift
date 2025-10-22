//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct RuleMarkView: View {

  var body: some View {
    List {
      NavigationLink {
        RuleMark_Vertical()
          .navigationTitle("Vertical")
      } label: {
        Text("Vertical")
      }

      NavigationLink {
        RuleMark_Horizontal()
          .navigationTitle("Horizontal")
      } label: {
        Text("Horizontal")
      }

      NavigationLink {
        RuleMark_LineStyle()
          .navigationTitle("Line Style")
      } label: {
        Text("Line Style")
      }

      NavigationLink {
        RuleMark_CombiningWithOtherCharts()
          .navigationTitle("Combining with Charts")
      } label: {
        Text("Combining with Charts")
      }
    }
  }
}

#Preview {
  RuleMarkView()
}
