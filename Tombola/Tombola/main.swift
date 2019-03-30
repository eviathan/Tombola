//
//  main.swift
//  Tombola
//
//  Created by Brian on 30/03/2019.
//  Copyright © 2019 Eviathan. All rights reserved.
//

/*
 varied amount of balls
 varied range of numbers
 varied bonus ball system
 varied prize configurations
 */

import Foundation
import RainbowSwift

var lotteryMachine = LotteryMachine()
var arguments = CommandLine.arguments

enum GameType: CustomStringConvertible {
    case lotto
    case euroMillions
    case setForLife
    case lottoHotPicks
    case euroMillionsHotPicks
    case thunderBall
    
    var description: String {
        get {
            switch self {
                
            case .lotto: return "Lotto"
            case .euroMillions: return "Euromillions"
            case .setForLife: return "Set For Life"
            case .lottoHotPicks: return "Lotto Hot Picks"
            case .euroMillionsHotPicks: return "Euromillions Hot Picks"
            case .thunderBall: return "Thunder Ball"
            }
        }
    }
    
    var value: Game {
        get {
            switch self {
                
            case .lotto: return Lotto()
            case .euroMillions: return EuroMillions()
            case .setForLife: return SetForLife()
            case .lottoHotPicks: return  HotPicks(type: .lotto)
            case .euroMillionsHotPicks: return HotPicks(type: .euromillions)
            case .thunderBall: return ThunderBall()
            }
        }
    }
}

let types: [(index:String, type: GameType)] = [
    (index:"1", type: .lotto),
    (index:"2", type: .euroMillions),
    (index:"3", type: .setForLife),
    (index:"4", type: .lottoHotPicks),
    (index:"5", type: .euroMillionsHotPicks),
    (index:"6", type: .thunderBall)
]


// Run with no arguments
if arguments.count <= 1 {
    print("---------------------------------")
    print("|   Lottery Ticket Generator    |".applyingCodes(Style.bold))
    print("---------------------------------\n")
    print("What kind of ticket would you like?\n".applyingCodes(Style.underline))
    print(types.map({ "\($0.index). \($0.type.description)" }).joined(separator: "\n").applyingCodes(Style.italic) + "\n")
    
    let gameType = readLine() ?? ""

    let type = types.first{ $0.index == gameType }!
    
    print("\nHow many \(type.type.description) tickets would you like? \n".applyingCodes(Style.underline))
    
    let amount = Int(readLine() ?? "") ?? 0
    
    
    for i in 1...amount {
        let results = lotteryMachine.play(games: type.type.value)
        print("\(i). \(results.first!.values)")
    }
    
} else {
    //var results = lotteryMachine.play(games: HotPicks(type: HotPicksType.euromillions))
    //
    //print(results)
    //print(arguments.dropFirst())
}
