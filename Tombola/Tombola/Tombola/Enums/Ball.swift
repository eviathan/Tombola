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
    case setForLife(amount: Int)
    case setForLifeLifeBall(amount: Int)
    case hotPicksLotto(amount: Int)
    case hotPicksEuromillions(amount: Int)
    case thunderball(amount: Int)
    case thunderballThunderball(amount: Int)
    
    public func getRange() -> Range<Int> {
        switch self {
        case .euromillions(_): return 1..<50
        case .euromillionsLuckyStar(_): return 1..<12
        case .lotto(_): return 1..<59
        case .setForLife(_): return 1..<47
        case .setForLifeLifeBall(_): return 1..<10
        case .hotPicksLotto(_): return 1..<59
        case .hotPicksEuromillions(_): return 1..<50
        case .thunderball(_): return 1..<39
        case .thunderballThunderball(_): return 1..<14
        }
    }
    
    public var values: [Int] {
        get {
            switch self {
            case .euromillions(let amount),
                 .euromillionsLuckyStar(let amount),
                 .lotto(let amount),
                 .setForLife(let amount),
                 .setForLifeLifeBall(let amount),
                 .hotPicksLotto(let amount),
                 .hotPicksEuromillions(let amount),
                 .thunderball(let amount),
                 .thunderballThunderball(let amount):
                    return Int.randomNumbersInRange(self.getRange(), amount: amount)
            }
        } 
    }
}
