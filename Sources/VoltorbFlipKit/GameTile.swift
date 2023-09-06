//
//  GameTile.swift
//  
//
//  Created by Austin Jackson on 9/5/23.
//

import Foundation

public class GameTile: Tile {
  
  public var value: Int = 0
  public var flipped: Bool = false
  public var memoed: TileMemo = .none
  
  // MARK: Game Tiles (extra)
  public var bonusFound: Bool = false
  public var bombFound: Bool = false
  
  
}
