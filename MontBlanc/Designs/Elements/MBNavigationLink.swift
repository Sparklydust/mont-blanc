//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct MBNavigationLink<Content: View>: View {

  private let title: String
  private let label: String?
  @ViewBuilder private var content: () -> Content

  init(
    title: String,
    label: String? = .none,
    content: @escaping () -> Content
  ) {
    self.title = title
    self.label = label
    self.content = content
  }

  var body: some View {
    NavigationLink {
      content()
        .navigationTitle(title)
    } label: {
      Text(label ?? title)
    }
  }
}

#Preview {
  MBNavigationLink(title: "Basic") {
    SectorMark_Basic()
  }
}
