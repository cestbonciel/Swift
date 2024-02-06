//
//  main.swift
//  ProtocolWithExtension
//
//  Created by Nat Kim on 2024/02/06.
//

import Foundation

protocol DiceGame {
    var dice: Dice { get }
    func play()
}

protocol TextRepresentable {
    var textualDescription: String { get }
}

extension Dice: TextRepresentable {
    var textualDescription: String {
        return "A \(sides)-sided dice"
    }
}

let d12 = Dice(sides: 12, generator: LinearCongruentialGenerator())
print(d12.textualDescription)
