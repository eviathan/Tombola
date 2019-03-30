//
//  main.swift
//  Tombola
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

import Foundation

var lotteryMachine = LotteryMachine()

var results = lotteryMachine.play(games: HotPicks(type: HotPicksType.euromillions))

print(results)

