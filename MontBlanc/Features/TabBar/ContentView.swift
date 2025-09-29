//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  var body: some View {
    TabView {
      Tab("Charts", systemImage: "chart.bar.fill") {
        charts
      }
    }
  }

  private var charts: some View {
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
      }
      .navigationTitle("Charts")
    }
  }
}

#Preview {
  ContentView()
}
