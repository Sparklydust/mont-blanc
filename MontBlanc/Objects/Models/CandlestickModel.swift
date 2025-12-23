//
// Copyright © 2025 Roland Lariotte. See LICENSE file for terms. All rights reserved.
//

import Foundation

struct CandlestickModel: Identifiable {

  let id = UUID()
  let date: Date
  let open: Double
  let close: Double
  let high: Double
  let low: Double
}

extension CandlestickModel {

  static func mockData() -> [CandlestickModel] {
    [
      .init(date: Date(timeIntervalSinceReferenceDate: 770491200), open: 170, close: 175, high: 180, low: 160),
      .init(date: Date(timeIntervalSinceReferenceDate: 770577600), open: 175, close: 160, high: 185, low: 150),
      .init(date: Date(timeIntervalSinceReferenceDate: 770664000), open: 160, close: 182, high: 190, low: 155),
      .init(date: Date(timeIntervalSinceReferenceDate: 770750400), open: 182, close: 170, high: 185, low: 165),
      .init(date: Date(timeIntervalSinceReferenceDate: 770836800), open: 170, close: 180, high: 188, low: 168),
      .init(date: Date(timeIntervalSinceReferenceDate: 770923200), open: 180, close: 185, high: 192, low: 170),
      .init(date: Date(timeIntervalSinceReferenceDate: 771009600), open: 185, close: 190, high: 195, low: 180),
      .init(date: Date(timeIntervalSinceReferenceDate: 771096000), open: 190, close: 188, high: 194, low: 182),
      .init(date: Date(timeIntervalSinceReferenceDate: 771182400), open: 188, close: 192, high: 196, low: 186),
      .init(date: Date(timeIntervalSinceReferenceDate: 771268800), open: 192, close: 195, high: 198, low: 190)
    ]
  }

  static func mockDataAlt() -> [CandlestickModel] {
    [
      .init(date: Date(timeIntervalSinceReferenceDate: 770491200), open: 170, close: 168, high: 172, low: 167),
      .init(date: Date(timeIntervalSinceReferenceDate: 770577600), open: 168, close: 166, high: 169, low: 165),
      .init(date: Date(timeIntervalSinceReferenceDate: 770664000), open: 166, close: 169, high: 170, low: 165),
      .init(date: Date(timeIntervalSinceReferenceDate: 770750400), open: 169, close: 171, high: 172, low: 168),
      .init(date: Date(timeIntervalSinceReferenceDate: 770836800), open: 171, close: 172, high: 173, low: 170),
      .init(date: Date(timeIntervalSinceReferenceDate: 770923200), open: 172, close: 173, high: 174, low: 171),
      .init(date: Date(timeIntervalSinceReferenceDate: 771009600), open: 173, close: 174, high: 175, low: 172),
      .init(date: Date(timeIntervalSinceReferenceDate: 771096000), open: 174, close: 173, high: 175, low: 172),
      .init(date: Date(timeIntervalSinceReferenceDate: 771182400), open: 173, close: 174, high: 175, low: 172),
      .init(date: Date(timeIntervalSinceReferenceDate: 771268800), open: 174, close: 175, high: 176, low: 173)
    ]
  }
}
