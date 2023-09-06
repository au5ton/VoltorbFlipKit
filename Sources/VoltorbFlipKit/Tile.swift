//
//  Tile.swift
//  
//
//  Created by Austin Jackson on 9/5/23.
//

import Foundation

public class Tile: Equatable, Hashable {
  //unowned let board: Board
  
  public var x, y: Int
  
  // MARK: Indicator Tiles
//  public var type: TileType
//  public var division: TileIndicatorType
//  public var relatedSum: Int = 0
//  public var bombCount: Int = 0
  
  public func hash(into hasher: inout Hasher) {
    return hasher.combine(ObjectIdentifier(self))
  }
  
  public init(x: Int, y: Int) {
    self.x = x
    self.y = y
  }
}

public func == (lhs: Tile, rhs: Tile) -> Bool {
  return lhs.x == rhs.x && lhs.y == rhs.y
}
