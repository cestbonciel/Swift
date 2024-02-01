import UIKit

var comChoice = Int.random(in: 1...10)
var myChoice = Int.random(in: 1...10)

if myChoice == comChoice {
    print("Bingo!")
} else if myChoice < comChoice {
    print("Down")
} else {
    print("Up")
}
