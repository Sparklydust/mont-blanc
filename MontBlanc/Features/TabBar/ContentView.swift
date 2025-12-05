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

      Tab("Customizations", systemImage: "chart.line.text.clipboard") {
        CustomizationsTab()
      }

      Tab("Axes", systemImage: "chart.line.flattrend.xyaxis") {
        AxesTab()
      }

      Tab("Magnifiers", systemImage: "wand.and.sparkles.inverse") {
        MagnifiersTab()
      }
    }
  }
}

#Preview {
  ContentView()
}
