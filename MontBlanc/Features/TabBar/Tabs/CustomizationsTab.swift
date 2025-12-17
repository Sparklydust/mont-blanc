//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct CustomizationsTab: View {

  var body: some View {
    NavigationStack {
      List {
        MBNavigationLink(
          title: "Background",
          label: "24 - Background"
        ) {
          Customization_Background()
        }

        MBNavigationLink(
          title: "Chart Background",
          label: "25 - Chart Background"
        ) {
          Customization_ChartBackground()
        }

        MBNavigationLink(
          title: "Chart Overlay",
          label: "26 - Chart Overlay"
        ) {
          Customization_ChartOverlay()
        }

        MBNavigationLink(
          title: "Plot Background",
          label: "27 - Plot Background"
        ) {
          Customization_Plot_Background()
        }

        MBNavigationLink(
          title: "Border",
          label: "28 - Border"
        ) {
          Customization_Border()
        }

        MBNavigationLink(
          title: "Annotations",
          label: "29 - Annotations"
        ) {
          Customization_Annotation()
        }

        MBNavigationLink(
          title: "Y Scale",
          label: "30 - Y Scale"
        ) {
          Customization_ChartYScale()
        }

        MBNavigationLink(
          title: "Y Scale Padding",
          label: "31 - Y Scale Padding"
        ) {
          Customization_ChartYScale_Padding()
        }

        MBNavigationLink(
          title: "Y Scale Combine Domain & Range",
          label: "32 - Y Scale Combine Domain & Range"
        ) {
          Customization_ChartYScale_CombineRangeAndDomain()
        }

        MBNavigationLink(
          title: "Y Scale Reversed",
          label: "33 - Y Scale Reversed"
        ) {
          Customization_ChartYScale_Reversed()
        }

        MBNavigationLink(
          title: "Y Scale Append",
          label: "34 - Y Scale Append"
        ) {
          Customization_ChartYScale_Append()
        }

        MBNavigationLink(
          title: "X Scale Sort",
          label: "35 - X Scale Sort"
        ) {
          Customization_ChartXScale_Sort()
        }

        MBNavigationLink(
          title: "Foreground Style Scale",
          label: "36 - Foreground Style Scale"
        ) {
          Customization_ChartForegroundStyleScale()
        }

        MBNavigationLink(
          title: "Foreground Style Scale Dictionary",
          label: "37 - Foreground Style Scale Dictionary"
        ) {
          Customization_ChartForegroundStyleScale_Dictionary()
        }
      }
      .navigationTitle("Customizations")
    }
  }
}

#Preview {
  CustomizationsTab()
}
