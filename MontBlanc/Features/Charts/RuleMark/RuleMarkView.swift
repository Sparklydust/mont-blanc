//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct RuleMarkView: View {

  var body: some View {
    List {
      MBNavigationLink(title: "Vertical") {
        RuleMark_Vertical()
      }

      MBNavigationLink(title: "Horizontal") {
        RuleMark_Horizontal()
      }

      MBNavigationLink(title: "Line Style") {
        RuleMark_LineStyle()
      }

      MBNavigationLink(title: "Combining with Charts") {
        RuleMark_CombiningWithOtherCharts()
      }
    }
  }
}

#Preview {
  RuleMarkView()
}
