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
 
 Lotto:
 5 numbers from 1-59
 https://www.national-lottery.co.uk/games/lotto-hotpicks

 Euromillions:
 5 numbers from 1-50
 https://www.national-lottery.co.uk/games/euromillions-hotpicks
 */

public enum HotPicksType {
    case lotto
    case euromillions
}

public class HotPicks: Game {
    
    public var name: String = "Hot Picks"
    public var balls: [Ball]
    
    var type: HotPicksType
    var amount: Int
    
    public init(type: HotPicksType, amount: Int = 5) {
        self.type = type
        self.amount = amount
        
        switch self.type {
            case .lotto:  self.balls = [.hotPicksLotto(amount: self.amount)]
            case .euromillions: self.balls =  [.hotPicksEuromillions(amount: self.amount)]
        }
    }
}
