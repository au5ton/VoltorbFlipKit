//
//  Board.swift
//  
//
//  Created by Austin Jackson on 9/5/23.
//

import Foundation

public class Board: ObservableObject {
  public var height: Int = 6
  public var width: Int = 6
  
  public var tiles: [Tile]
  
  init(demoMode: Bool = false, width: Int? = nil, height: Int? = nil, onlyGameTiles: Bool = false) {
    if let width = width {
      self.width = width
    }
    if let height = height {
      self.height = height
    }
    //self.onlyGameTiles = onlyGameTiles
    
    self.tiles = [Tile]()
    for y in 0..<self.height {
      for x in 0..<self.width {
        let isRightIndicator = x == (self.width-1)
        let isBottomIndicator = y == 0
        let isBottomRight = isRightIndicator && isBottomIndicator
        let isIndicator = isRightIndicator || isBottomIndicator
        if onlyGameTiles {
          self.tiles.append(GameTile(x: x, y: y))
        }
        else if isBottomRight {
          // timer tile
          self.tiles.append(Tile(x: x, y: y))
        }
        else if isIndicator {
          self.tiles.append(IndicatorTile(x: x, y: y, division: isRightIndicator ? .row : .column))
        }
        else {
          self.tiles.append(GameTile(x: x, y: y))
        }
      }
    }
  }
}
