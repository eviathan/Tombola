//
//  IntExtensions.swift
//  Tombola.Core
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

import Foundation

public extension Int {
    public static func randomNumbersInRange(_ range: Range<Int>, amount: Int) -> [Int] {
        return (0..<amount).map { _ in Int.random(in: range) }
    }
}
