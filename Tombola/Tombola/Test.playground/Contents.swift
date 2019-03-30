import Cocoa
import Tombola_Core

var lotteryMachine = LotteryMachine()

var results = lotteryMachine.play(games: EuroMillions())
print(results)
