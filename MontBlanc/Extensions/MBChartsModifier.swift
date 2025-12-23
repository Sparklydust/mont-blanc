//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

extension View {

  func mbChartsContainer() -> some View {
    modifier(MBChartsContainerModifier())
  }
}

private struct MBChartsContainerModifier: ViewModifier {

  func body(content: Content) -> some View {
    content
      .padding()
      .padding(.vertical)
      .aspectRatio(contentMode: .fit)
      .dynamicTypeSize(.xxLarge)
  }
}
