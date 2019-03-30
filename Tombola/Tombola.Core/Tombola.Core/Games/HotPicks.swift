//
//  EuroMillions.swift
//  Tombola.Core
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

import Foundation

public enum HotPicksType {
    case lotto
    case euromillions
}

public class HotPicks {
    
    public var name: String = "Hot Picks"
    
    var type: HotPicksType
    var amount: Int
    
    public var balls: [Ball] {
        get {
            switch self.type {
            case .lotto: return [.hotPicksLotto(amount: self.amount)]
            case .euromillions: return [.hotPicksEuromillions(amount: self.amount)]
            }
        }
    }
    
    public init(type: HotPicksType, amount: Int = 5) {
        self.type = type
        self.amount = amount
    }
}
