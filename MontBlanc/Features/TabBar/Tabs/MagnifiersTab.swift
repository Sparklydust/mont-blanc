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

        Section("Scrolling") {
          MBNavigationLink(
            title: "Horizontally",
            label: "Chapter 81 - Horizontally"
          ) {
            Scrolling_ChartScrollableAxes()
          }

          MBNavigationLink(
            title: "Vertically",
            label: "Chapter 82 - Vertically"
          ) {
            Scrolling_ChartScrollableAxes_Vertical()
          }

          MBNavigationLink(
            title: "Visible Domain",
            label: "Chapter 83 - Visible Domain"
          ) {
            Scrolling_ChartVisibleDomain()
          }

          MBNavigationLink(
            title: "Visible Domain for Dates",
            label: "Chapter 84 - Visible Domain for Dates"
          ) {
            Scrolling_ChartVisibleDomain_ForDates()
          }

          MBNavigationLink(
            title: "Scroll to Position",
            label: "Chapter 85 - Scroll to Position"
          ) {
            Scrolling_ChartScrollPosition()
          }

          MBNavigationLink(
            title: "Target Behavior",
            label: "Chapter 86 - Target Behavior"
          ) {
            Scrolling_ChartScrollTargetBehavior()
          }
        }

        Section("Animating") {
          MBNavigationLink(
            title: "From Zero",
            label: "Chapter 87 - From Zero"
          ) {
            Animation_FromZero()
          }

          MBNavigationLink(
            title: "One by One on Bar",
            label: "Chapter 88 - One by One on Bar"
          ) {
            Animation_OneByOne()
          }

          MBNavigationLink(
            title: "One by One on Sector",
            label: "Chapter 89 - One by One on Sector"
          ) {
            Animation_OneByOne_SectorMark()
          }

          MBNavigationLink(
            title: "Changing Values",
            label: "Chapter 90 - Changing Values"
          ) {
            Animation_ChangingValues()
          }

          MBNavigationLink(
            title: "Line Across",
            label: "Chapter 91 - Line Accros"
          ) {
            Animation_LineMark_Across()
          }

          MBNavigationLink(
            title: "Point Phase",
            label: "Chapter 92 - Point Phase"
          ) {
            Animation_PointMark()
          }
        }
      }
    }
  }
}

#Preview {
  MagnifiersTab()
}
