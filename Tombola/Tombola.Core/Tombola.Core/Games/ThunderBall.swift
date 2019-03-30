//
//  Thunderball.swift
//  Tombola.Core
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

import Foundation

/*
 Rules:
 5 numbers from 1-39
 1 number from 1-14 (thunderball)
 
 All numbers (including thunderball) for Jackpot
 
 for other prizes see:
 https://www.national-lottery.co.uk/games/thunderball?icid=-:mm:-:mdg:tb:dbg:pl:co
 */

public class ThunderBall: Game {
    
    public var name: String = "Thunderball"
    public var balls: [Ball] = [.thunderball(amount: 5), .thunderballThunderball(amount: 1)]
    
    public init() { }
}
