//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct PointMarkView: View {

  var body: some View {
    List {
      NavigationLink {
        PointMark_Basic()
          .navigationTitle("Basic")
      } label: {
        Text("Basic")
      }

      NavigationLink {
        PointMark_Series()
          .navigationTitle("Series")
      } label: {
        Text("Series")
      }

      NavigationLink {
        PointMark_Series()
          .navigationTitle("Interval")
      } label: {
        Text("Interval")
      }

      NavigationLink {
        PointMark_SeriesInterval()
          .navigationTitle("Series Interval")
      } label: {
        Text("Series Interval")
      }

      NavigationLink {
        PointMark_SizeByValue()
          .navigationTitle("Size By Value")
      } label: {
        Text("Size By Value")
      }

      NavigationLink {
        PointMark_Symbol()
          .navigationTitle("Symbol")
      } label: {
        Text("Symbol")
      }

      NavigationLink {
        PointMark_CustomSymbol()
          .navigationTitle("Custom Symbol")
      } label: {
        Text("Custom Symbol")
      }

      NavigationLink {
        PointMark_Series_SymbolBy()
          .navigationTitle("Series Symbol By")
      } label: {
        Text("Series Symbol By")
      }
    }
  }
}

#Preview {
  PointMarkView()
}
