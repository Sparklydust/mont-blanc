//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct ChartsTab: View {

  var body: some View {
    NavigationStack {
      List {
        NavigationLink {
          FirstChartView()
            .navigationTitle("First Chart")
        } label: {
          Text("Chapter 1 - First Chart")
        }

        NavigationLink {
          AreaMarkView()
            .navigationTitle("Area Mark")
        } label: {
          Text("Chapter 2 - Area Mark")
        }

        NavigationLink {
          BarMarkView()
            .navigationTitle("Bar Mark")
        } label: {
          Text("Chapter 3 - Bar Mark")
        }

        NavigationLink {
          LineMarkView()
            .navigationTitle("Line Mark")
        } label: {
          Text("Chapter 4 - Line Mark")
        }

        NavigationLink {
          PointMarkView()
            .navigationTitle("Point Mark")
        } label: {
          Text("Chapter 5 - Point Mark")
        }

        NavigationLink {
          RectangleMarkView()
            .navigationTitle("Rectangle Mark")
        } label: {
          Text("Chapter 6 - Rectangle Mark")
        }
      }
      .navigationTitle("Charts")
    }
  }
}

#Preview {
  ChartsTab()
}
