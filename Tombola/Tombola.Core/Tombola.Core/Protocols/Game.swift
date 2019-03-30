//
//  Game.swift
//  Tombola.Core
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

import Foundation

public protocol Game {
    
    var name: String { get set }
    var balls: [Ball] { get set }
}
