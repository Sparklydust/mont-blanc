//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct ChartsTab: View {

  var body: some View {
    NavigationStack {
      List {
        MBNavigationLink(
          title: "First Chart",
          label: "Chapter 1 - First Chart"
        ) {
          FirstChartView()
        }

        MBNavigationLink(
          title: "Area Mark",
          label: "Chapter 2 - Area Mark"
        ) {
          AreaMarkView()
        }

        MBNavigationLink(
          title: "Bar Mark",
          label: "Chapter 3 - Bar Mark"
        ) {
          BarMarkView()
        }

        MBNavigationLink(
          title: "Line Mark",
          label: "Chapter 4 - Line Mark"
        ) {
          LineMarkView()
        }

        MBNavigationLink(
          title: "Point Mark",
          label: "Chapter 5 - Point Mark"
        ) {
          PointMarkView()
        }

        MBNavigationLink(
          title: "Rectangle Mark",
          label: "Chapter 6 - Rectangle Mark"
        ) {
          RectangleMarkView()
        }

        MBNavigationLink(
          title: "Rule Mark",
          label: "Chapter 7 - Rule Mark"
        ) {
          RuleMarkView()
        }

        MBNavigationLink(
          title: "Sector Mark",
          label: "Chapter 8 - Sector Mark"
        ) {
          SectorMarkView()
        }
      }
      .navigationTitle("Charts")
    }
  }
}

#Preview {
  ChartsTab()
}
