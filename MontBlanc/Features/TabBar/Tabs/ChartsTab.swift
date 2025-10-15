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
            .navigationTitle("Chapter 1 - First Chart")
        } label: {
          Text("Chapter 1 - First Chart")
        }

        NavigationLink {
          AreaMarkView()
            .navigationTitle("Chapter 2 - Area Mark")
        } label: {
          Text("Chapter 2 - Area Mark")
        }

        NavigationLink {
          BarMarkView()
            .navigationTitle("Chapter 3 - Bar Mark")
        } label: {
          Text("Chapter 3 - Bar Mark")
        }

        NavigationLink {
          LineMarkView()
            .navigationTitle("Chapter 4 - Line Mark")
        } label: {
          Text("Chapter 4 - Line Mark")
        }

        NavigationLink {
          PointMarkView()
            .navigationTitle("Chapter 5 - Point Mark")
        } label: {
          Text("Chapter 5 - Point Mark")
        }
      }
      .navigationTitle("Charts")
    }
  }
}

#Preview {
  ChartsTab()
}
