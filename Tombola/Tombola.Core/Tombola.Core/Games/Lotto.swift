//
//  EuroMillions.swift
//  Tombola.Core
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

import Foundation

/*
 Rules:
 6 numbers from 1-59
 
 Jackpot is all 6 numbers (regardless of bonus)
 bonus ball drawn but picked from pool of numbers
 
 https://www.national-lottery.co.uk/games/lotto
 */

public class Lotto: Game {
    
    public var name: String = "Lotto"
    public var balls: [Ball] = [.lotto(amount: 6)]
    
     public init() { }
}
