//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct ModifiersTab: View {

  var body: some View {
    NavigationStack {
      List {
        MBNavigationLink(
          title: "Foreground Style",
          label: "Chapter 9 - Foreground Style"
        ) {
          Mark_ForegroundStyle()
        }

        MBNavigationLink(
          title: "Foreground Style By Value",
          label: "Chapter 10 - Foreground Style By Value"
        ) {
          Mark_ForegroundStyle_ByValue()
        }

        MBNavigationLink(
          title: "Foreground Style Series",
          label: "Chapter 11 - Foreground Style Series"
        ) {
          Mark_ForegroundStyle_Series()
        }

        MBNavigationLink(
          title: "Gradient",
          label: "Chapter 12 - Gradient"
        ) {
          Mark_ForegroundStyle_Gradient()
        }

        MBNavigationLink(
          title: "Aligns With Plot Area",
          label: "Chapter 13 - Aligns With Plot Area"
        ) {
          Mark_AlignsMarkStylesWithPlotArea()
        }

        MBNavigationLink(
          title: "Gradient Combining",
          label: "Chapter 14 - Gradient Combining"
        ) {
          Mark_ForegroundStyle_Gradient_Combining()
        }

        MBNavigationLink(
          title: "Image Paint",
          label: "Chapter 15 - Image Paint"
        ) {
          Mark_ForegroundStyle_ImagePaint()
        }

        MBNavigationLink(
          title: "Blur",
          label: "Chapter 16 - Blur"
        ) {
          Mark_Blur()
        }

        MBNavigationLink(
          title: "Offset",
          label: "Chapter 17 - Offset"
        ) {
          Mark_Offset()
        }

        MBNavigationLink(
          title: "Shadow",
          label: "Chapter 18 - Shadow"
        ) {
          Mark_Shadow()
        }

        MBNavigationLink(
          title: "Combined Modifiers",
          label: "Chapter 19 - Combined Modifiers"
        ) {
          Mark_Combined()
        }

        MBNavigationLink(
          title: "Compositing Layers",
          label: "Chapter 20 - Compositing Layers"
        ) {
          Mark_CompositingLayer()
        }

        MBNavigationLink(
          title: "Mask",
          label: "Chapter 21 - Mask"
        ) {
          Mark_Mask()
        }

        MBNavigationLink(
          title: "Conditional",
          label: "Chapter 22 - Conditional"
        ) {
          Mark_ForegroundStyle_Conditional()
        }

        MBNavigationLink(
          title: "Conditional Function",
          label: "Chapter 23 - Conditional Function"
        ) {
          Mark_Conditional_Function()
        }
      }
      .navigationTitle("Modifiers")
    }
  }
}

#Preview {
  NavigationStack {
    ModifiersTab()
  }
}
