//
//  BallType.swift
//  Tombola.Core
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

import Foundation

public enum Ball {
    
    case euromillions(amount: Int)
    case euromillionsLuckyStar(amount: Int)
    case lotto(amount: Int)
    
    public func getRange() -> Range<Int> {
        switch self {
        case .euromillions(_): return 1..<50
        case .euromillionsLuckyStar(_): return 1..<12
        case .lotto(_): return 1..<59
        }
    }
    
    public var values: [Int] {
        get {
            switch self {
            case .euromillions(let amount),
                 .euromillionsLuckyStar(let amount),
                 .lotto(let amount):
                    return Int.randomNumbersInRange(self.getRange(), amount: amount)
            }
        } 
    }
}
