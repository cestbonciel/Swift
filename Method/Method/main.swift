//
//  main.swift
//  Method
//
//  Created by Nat Kim on 2024/02/04.
//

import Foundation

// MARK: - instance method

class Food {
    var name: String
    var flavor: String
    var quantity: Int
    
    init(name: String, flavor: String, quantity: Int) {
        self.name = name
        self.flavor = flavor
        self.quantity = quantity
    }
    
    
    func order() {
        print("\(name): \(flavor), quantity: \(quantity) 이 주문되었습니다.")
    }
}

var case1 = Food(name: "떡볶이", flavor: "매움", quantity: 3)
case1.order()

struct Point {
    var x = 0.0, y = 0.0
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
}

var somePoint = Point(x: 1.0, y: 2.0)
somePoint.moveBy(x: 3.0, y: 4.0)
print("The point is now at \(somePoint.x), \(somePoint.y)")
// The point is now at 4.0, 6.0

// MARK: - Type Method

struct LevelTracker {
    static var highestUnlockedLevel = 1
    var currentLevel = 1
    
    static func unlock(_ level: Int) {
        if level > highestUnlockedLevel { highestUnlockedLevel = level }
    }
    
    static func isUnlocked(_ level: Int) -> Bool {
        return level >= highestUnlockedLevel
    }
    
    @discardableResult
    mutating func advance(to level: Int) -> Bool {
        if LevelTracker.isUnlocked(level) {
            currentLevel = level
            return true
        } else {
            return false
        }
    }
}

class Player {
    var tracker = LevelTracker()
    let playerName: String
    
    func complete(level: Int) {
        LevelTracker.unlock(level + 1)
        tracker.advance(to: level + 1)
    }
    
    init(name: String) {
        playerName = name
    }
}

var player = Player(name: "Avril Lavine")
player.complete(level: 3)
print("highest unlocked level is now \(LevelTracker.highestUnlockedLevel)")
//highest unlocked level is now 4
