//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct ChartsTab: View {

  var body: some View {
    NavigationStack {
      List {
        MBNavigationLink(
          title: "First Charts",
          label: "1 - First Charts"
        ) {
          FirstChartView()
        }

        MBNavigationLink(
          title: "Area Mark",
          label: "2 - Area Mark"
        ) {
          AreaMarkView()
        }

        MBNavigationLink(
          title: "Bar Mark",
          label: "3 - Bar Mark"
        ) {
          BarMarkView()
        }

        MBNavigationLink(
          title: "Line Mark",
          label: "4 - Line Mark"
        ) {
          LineMarkView()
        }

        MBNavigationLink(
          title: "Point Mark",
          label: "5 - Point Mark"
        ) {
          PointMarkView()
        }

        MBNavigationLink(
          title: "Rectangle Mark",
          label: "6 - Rectangle Mark"
        ) {
          RectangleMarkView()
        }

        MBNavigationLink(
          title: "Rule Mark",
          label: "7 - Rule Mark"
        ) {
          RuleMarkView()
        }

        MBNavigationLink(
          title: "Sector Mark",
          label: "8 - Sector Mark"
        ) {
          SectorMarkView()
        }
      }
      .navigationTitle("Charts")
    }
  }
}

#Preview {
  NavigationStack {
    ChartsTab()
  }
}
