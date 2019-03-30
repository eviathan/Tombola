//
//  LotteryMachine.swift
//  Tombola.Core
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

import Foundation

public class LotteryMachine {
    
    public init () {}
    
    public func play(games: Game...) -> [String:[Int]] {
        
        var output = [String:[Int]]()
        
        for (index, game) in games.enumerated() {
            for ball in game.balls {
                output["\(index+1). \(game.name)"] = ball.values
            }
        }
        
        return output
    }
}
