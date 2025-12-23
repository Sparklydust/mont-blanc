//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

@main
struct MontBlancApp: App {

  var body: some Scene {
    WindowGroup {
      ContentView()
        #if os(macOS) || os(visionOS)
        .frame(minWidth: 800, minHeight: 600)
        #endif
    }
    .windowResizability(.contentSize)
  }
}
