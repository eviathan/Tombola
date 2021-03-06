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
 5 numbers from 1-50
 2 Lucky Star numbers from 1-12
 
 Jackpot is all numbers
 
 https://www.national-lottery.co.uk/games/euromillions
 */

public class EuroMillions: Game {
    
    public var name: String = "Euromillions"
    public var balls: [Ball] = [.euromillions(amount: 5), .euromillionsLuckyStar(amount: 2)]
    
    public init() { }
}
