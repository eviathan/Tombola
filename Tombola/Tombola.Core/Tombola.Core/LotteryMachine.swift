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
    
    public func play(games: Game...) -> [(name: String, values: [Int])] {
        
        var output = [(name: String, values: [Int])]()
        
        for (index, game) in games.enumerated() {
            
            var result = (name: "\(index+1).\(game.name)", values: [Int]())
            
            for ball in game.balls {
                result.values.append(contentsOf: ball.values)
            }
            
            output.append(result)
        }
        
        return output
    }
}
