//
//  IndicatorTile.swift
//  
//
//  Created by Austin Jackson on 9/5/23.
//

import Foundation

public class IndicatorTile: Tile {
  
  public var division: TileIndicatorType
  public var relatedSum: Int = 0
  public var bombCount: Int = 0
  
  public init(x: Int, y: Int, division: TileIndicatorType) {
    self.division = division
    super.init(x: x, y: y)
  }
}
