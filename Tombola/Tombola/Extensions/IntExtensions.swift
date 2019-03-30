//
//  IntExtensions.swift
//  Tombola.Core
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

import Foundation
import Cocoa

public extension Int {
    public static func randomNumbersInRange(_ range: Range<Int>, amount: Int) -> [Int] {
        
        var results = [Int]()
        
        while results.count < amount {
            let randomNumber = Int.random(in: range)
            if !results.contains(randomNumber) {
                results.append(randomNumber)
            }
        }
        
        return results
    }
}
