import Cocoa
import Tombola_Core

var lotteryMachine = LotteryMachine()

var results = lotteryMachine.play(games: EuroMillions(), EuroMillions(), EuroMillions(), EuroMillions(), SetForLife())
print(results.map { item in "\(item.name) \(item.values)"})
