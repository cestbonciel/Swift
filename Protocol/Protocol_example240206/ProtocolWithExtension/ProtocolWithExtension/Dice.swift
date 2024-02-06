//
//  Dice.swift
//  ProtocolWithExtension
//
//  Created by Nat Kim on 2024/02/06.
//

import Foundation

class Dice {
    var sides: Int
    var generator: AnyObject
    
    init(sides: Int, generator: AnyObject) {
        self.sides = sides
        self.generator = generator
    }
}
