//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Foundation

struct SeriesDataModel: Identifiable {

  let id = UUID()
  let series: String
  let label: String
  let value: Int
}
