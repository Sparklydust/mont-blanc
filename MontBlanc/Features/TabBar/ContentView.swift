//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  var body: some View {
    TabView {
      Tab("Charts", systemImage: "chart.bar.fill") {
        ChartsTab()
      }

      Tab("Modifiers", systemImage: "paintpalette.fill") {
        ModifiersTab()
      }
    }
  }
}

#Preview {
  ContentView()
}
