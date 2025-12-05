//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct MagnifiersTab: View {

  var body: some View {
    NavigationStack {
      List {
        Section("Annotations") {
          MBNavigationLink(
            title: "Adding",
            label: "Chapter 69 - Adding"
          ) {
            Annotation_Adding()
          }

          MBNavigationLink(
            title: "Position Vertical",
            label: "Chapter 70 - Position Vertical"
          ) {
            Annotation_PositionVertical()
          }

          MBNavigationLink(
            title: "Position Horizontal",
            label: "Chapter 71 - Position Horizontal"
          ) {
            Annotation_PositionHorizontal()
          }

          MBNavigationLink(
            title: "Alignment",
            label: "Chapter 72 - Alignment"
          ) {
            Annotation_Alignment()
          }

          MBNavigationLink(
            title: "Spacing",
            label: "Chapter 73 - Spacing"
          ) {
            Annotation_Spacing()
          }

          MBNavigationLink(
            title: "Beyond Text",
            label: "Chapter 74 - Beyond Text"
          ) {
            Annotation_BeyondText()
          }

          MBNavigationLink(
            title: "Overflow X",
            label: "Chapter 75 - Overflow X"
          ) {
            Annotation_Overflow_X()
          }

          MBNavigationLink(
            title: "Overflow FitTo",
            label: "Chapter 76 - Overflow FitTo"
          ) {
            Annotation_Overflow_FitTo()
          }
        }

        Section("Legends") {
          MBNavigationLink(
            title: "How to Show",
            label: "Chapter 77 - How to Show"
          ) {
            ChartLegend_HowToShow()
          }

          MBNavigationLink(
            title: "Hiding",
            label: "Chapter 78 - Hiding"
          ) {
            ChartLegend_Hiding()
          }

          MBNavigationLink(
            title: "Customization",
            label: "Chapter 79 - Customization"
          ) {
            ChartLegend_Customization()
          }

          MBNavigationLink(
            title: "Content",
            label: "Chapter 80 - Content"
          ) {
            ChartLegend_Content()
          }
        }
      }
    }
  }
}

#Preview {
  MagnifiersTab()
}
