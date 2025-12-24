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
            label: "69 - Adding"
          ) {
            Annotation_Adding()
          }

          MBNavigationLink(
            title: "Position Vertical",
            label: "70 - Position Vertical"
          ) {
            Annotation_PositionVertical()
          }

          MBNavigationLink(
            title: "Position Horizontal",
            label: "71 - Position Horizontal"
          ) {
            Annotation_PositionHorizontal()
          }

          MBNavigationLink(
            title: "Alignment",
            label: "72 - Alignment"
          ) {
            Annotation_Alignment()
          }

          MBNavigationLink(
            title: "Spacing",
            label: "73 - Spacing"
          ) {
            Annotation_Spacing()
          }

          MBNavigationLink(
            title: "Beyond Text",
            label: "74 - Beyond Text"
          ) {
            Annotation_BeyondText()
          }

          MBNavigationLink(
            title: "Overflow X",
            label: "75 - Overflow X"
          ) {
            Annotation_Overflow_X()
          }

          MBNavigationLink(
            title: "Overflow FitTo",
            label: "76 - Overflow FitTo"
          ) {
            Annotation_Overflow_FitTo()
          }
        }

        Section("Legends") {
          MBNavigationLink(
            title: "How to Show",
            label: "77 - How to Show"
          ) {
            ChartLegend_HowToShow()
          }

          MBNavigationLink(
            title: "Hiding",
            label: "78 - Hiding"
          ) {
            ChartLegend_Hiding()
          }

          MBNavigationLink(
            title: "Customization",
            label: "79 - Customization"
          ) {
            ChartLegend_Customization()
          }

          MBNavigationLink(
            title: "Content",
            label: "80 - Content"
          ) {
            ChartLegend_Content()
          }
        }

        Section("Scrolling") {
          MBNavigationLink(
            title: "Horizontally",
            label: "81 - Horizontally"
          ) {
            Scrolling_ChartScrollableAxes()
          }

          MBNavigationLink(
            title: "Vertically",
            label: "82 - Vertically"
          ) {
            Scrolling_ChartScrollableAxes_Vertical()
          }

          MBNavigationLink(
            title: "Visible Domain",
            label: "83 - Visible Domain"
          ) {
            Scrolling_ChartVisibleDomain()
          }

          MBNavigationLink(
            title: "Visible Domain for Dates",
            label: "84 - Visible Domain for Dates"
          ) {
            Scrolling_ChartVisibleDomain_ForDates()
          }

          MBNavigationLink(
            title: "Scroll to Position",
            label: "85 - Scroll to Position"
          ) {
            Scrolling_ChartScrollPosition()
          }

          MBNavigationLink(
            title: "Target Behavior",
            label: "86 - Target Behavior"
          ) {
            Scrolling_ChartScrollTargetBehavior()
          }
        }

        Section("Animating") {
          MBNavigationLink(
            title: "From Zero",
            label: "87 - From Zero"
          ) {
            Animation_FromZero()
          }

          MBNavigationLink(
            title: "One by One on Bar",
            label: "88 - One by One on Bar"
          ) {
            Animation_OneByOne()
          }

          MBNavigationLink(
            title: "One by One on Sector",
            label: "89 - One by One on Sector"
          ) {
            Animation_OneByOne_SectorMark()
          }

          MBNavigationLink(
            title: "Changing Values",
            label: "90 - Changing Values"
          ) {
            Animation_ChangingValues()
          }

          MBNavigationLink(
            title: "Line Across",
            label: "91 - Line Accros"
          ) {
            Animation_LineMark_Across()
          }

          MBNavigationLink(
            title: "Point Phase",
            label: "92 - Point Phase"
          ) {
            Animation_PointMark()
          }
        }

        Section("Interactions") {
          MBNavigationLink(
            title: "X Selection",
            label: "93 - X Selection"
          ) {
            Interact_ChartXSelection()
          }

          MBNavigationLink(
            title: "Persist X Selection",
            label: "94 - Persist X Selection"
          ) {
            Interact_ChartXSelection_TapMark()
          }

          MBNavigationLink(
            title: "Y Selection",
            label: "95 - Y Selection"
          ) {
            Interact_ChartYSelection()
          }

          MBNavigationLink(
            title: "Selection with Rule Mark",
            label: "96 - Selection with Rule Mark"
          ) {
            Interact_ChartXSelection_WithRuleMark()
          }

          MBNavigationLink(
            title: "Range of Values Selection",
            label: "97 - Range of Values Selection"
          ) {
            Interact_ChartXSelection_DateRange()
          }

          MBNavigationLink(
            title: "Chart Angle Selection",
            label: "98 - Chart Angle Selection"
          ) {
            Interact_ChartAngleSelection()
          }
        }

        Section("Candlestick Chart") {
          MBNavigationLink(
            title: "Example",
            label: "99 - Example"
          ) {
            CandlestickChartView()
          }

          MBNavigationLink(
            title: "Min and Max for Y Scale",
            label: "100 - Min and Max for Y Scale"
          ) {
            CandlestickChart_MinMaxView()
          }
        }

        Section("Bubble Chart") {
          MBNavigationLink(
            title: "Example",
            label: "101 - Example"
          ) {
            BubbleChartView()
          }

          MBNavigationLink(
            title: "With Legend",
            label: "102 - With Legend"
          ) {
            BubbleChart_WithLegendView()
          }
        }
      }
      .navigationTitle("Magnifiers")
    }
  }
}

#Preview {
  MagnifiersTab()
}
