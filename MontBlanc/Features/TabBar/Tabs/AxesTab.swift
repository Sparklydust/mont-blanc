//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import SwiftUI

struct AxesTab: View {

  var body: some View {
    NavigationStack {
      List {
        Section("General") {
          MBNavigationLink(
            title: "Y Axis Parts",
            label: "Chapter 38 - Y Axis Parts"
          ) {
            ChartYAxis_Parts()
          }

          MBNavigationLink(
            title: "X Axis Parts",
            label: "Chapter 39 - X Axis Parts"
          ) {
            ChartXAxis_Parts()
          }

          MBNavigationLink(
            title: "Hiding",
            label: "Chapter 40 - Hiding"
          ) {
            ChartAxis_Hiding()
          }
        }

        Section("Axis Marks") {
          MBNavigationLink(
            title: "Intro",
            label: "Chapter 41 - Intro"
          ) {
            AxisMarks_Intro()
          }

          MBNavigationLink(
            title: "Format Options",
            label: "Chapter 42 - Format Options"
          ) {
            AxisMarks_Format_Options()
          }

          MBNavigationLink(
            title: "Preset Options",
            label: "Chapter 43 - Preset Options"
          ) {
            AxisMarks_Preset_Options()
          }

          MBNavigationLink(
            title: "Position Options",
            label: "Chapter 44 - Position Options"
          ) {
            AxisMarks_Position_Options()
          }

          MBNavigationLink(
            title: "Values Desired Count",
            label: "Chapter 45 - Values Desired Count"
          ) {
            AxisMarks_Values_DesiredCount()
          }

          MBNavigationLink(
            title: "Values Hardcore",
            label: "Chapter 46 - Values Hardcore"
          ) {
            AxisMarks_Values_Hardcode()
          }

          MBNavigationLink(
            title: "Values Stride",
            label: "Chapter 47 - Values Stride"
          ) {
            AxisMarks_Values_Stride()
          }

          MBNavigationLink(
            title: "Stroke",
            label: "Chapter 48 - Stroke"
          ) {
            AxisMarks_Stroke()
          }

          MBNavigationLink(
            title: "Content X Axis",
            label: "Chapter 49 - Content X Axis"
          ) {
            AxisMarks_Content_XAxis()
          }

          MBNavigationLink(
            title: "Content Y Axis",
            label: "Chapter 50 - Content Y Axis"
          ) {
            AxisMarks_Content_YAxis()
          }
        }

        Section("Axis Grid Line") {
          MBNavigationLink(
            title: "Show & Hide",
            label: "Chapter 51 - Show & Hide"
          ) {
            GridLines_ShowAndHide()
          }

          MBNavigationLink(
            title: "Centering",
            label: "Chapter 52 - Centering"
          ) {
            GridLines_Centering()
          }

          MBNavigationLink(
            title: "Stroke",
            label: "Chapter 53 - Stroke"
          ) {
            GridLines_Stroke()
          }

          MBNavigationLink(
            title: "Color",
            label: "Chapter 54 - Color"
          ) {
            GridLines_Color()
          }

          MBNavigationLink(
            title: "Conditional Style",
            label: "Chapter 55 - Conditional Style"
          ) {
            GridLines_ConditionalStyle()
          }
        }

        Section("Axis Value Label") {
          MBNavigationLink(
            title: "Show & Hide",
            label: "Chapter 56 - Show & Hide"
          ) {
            AxisValueLabel_ShowHide()
          }

          MBNavigationLink(
            title: "String Parameter",
            label: "Chapter 57 - String Parameter"
          ) {
            AxisValueLabel_StringParameter()
          }

          MBNavigationLink(
            title: "Multi Label Alignment",
            label: "Chapter 58 - Multi Label Alignment"
          ) {
            AxisValueLabel_MultiLabelAlignment()
          }

          MBNavigationLink(
            title: "Customize Labels",
            label: "Chapter 59 - Customize Labels"
          ) {
            AxisValueLabel_CustomizeLabels()
          }

          MBNavigationLink(
            title: "Conditional Formatting",
            label: "Chapter 60 - Conditional Formatting"
          ) {
            AxisValueLabel_ConditionalFormatting()
          }

          MBNavigationLink(
            title: "Wrapping Text",
            label: "Chapter 61 - Wrapping Text"
          ) {
            AxisValueLabel_WrappingText()
          }

          MBNavigationLink(
            title: "Rotating Text",
            label: "Chapter 62 - Rotating Text"
          ) {
            AxisValueLabel_RotatingText()
          }
        }

        Section("Axis Tick") {
          MBNavigationLink(
            title: "Intro",
            label: "Chapter 63 - Intro"
          ) {
            AxisTick_Intro()
          }

          MBNavigationLink(
            title: "Parameters",
            label: "Chapter 64 - Parameters"
          ) {
            AxisTick_Parameters()
          }

          MBNavigationLink(
            title: "Length",
            label: "Chapter 65 - Length"
          ) {
            AxisTick_Length()
          }

          MBNavigationLink(
            title: "Modifiers",
            label: "Chapter 66 - Modifiers"
          ) {
            AxisTick_Modifiers()
          }
        }

        Section("Axis Labels") {
          MBNavigationLink(
            title: "X Axis",
            label: "Chapter 67 - X Axis"
          ) {
            AxisLabel_XAxis()
          }

          MBNavigationLink(
            title: "With Content",
            label: "Chapter 69 - With Content"
          ) {
            AxisLabel_WithContent()
          }

          MBNavigationLink(
            title: "Y Axis",
            label: "Chapter 68 - Y Axis"
          ) {
            AxisLabel_YAxis()
          }
        }
      }
      .navigationTitle("Axes")
    }
  }
}

#Preview {
  AxesTab()
}
