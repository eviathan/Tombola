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
 5 numbers from 1-47
 1 number from 1-10 (life ball)
 
 All numbers (including lifeball) for Jackpot
 
 https://www.national-lottery.co.uk/games/set-for-life
 */

public class SetForLife: Game {
    
    public var name: String = "Set For Life"
    public var balls: [Ball] = [.setForLife(amount: 5), .setForLifeLifeBall(amount: 1)]
    
     public init() { }
}
