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
    
    func getRange() -> Range<Int> {
        switch self {
        case .euromillions(_): return 0..<1
        case .euromillionsLuckyStar(_): return 0..<3
        }
    }
    
    func getValues() -> [Int] {
        switch self {
        case .euromillions(let amount),
             .euromillionsLuckyStar(let amount):
                return Int.randomNumbersInRange(self.getRange(), amount: amount)
        }
    }
}
