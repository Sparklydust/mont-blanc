//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Foundation

struct SeriesIntervalModel: Identifiable {

  let id = UUID()
  let series: String
  let label: String
  let startValue: Int
  let endValue: Int
}
