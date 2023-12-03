//
//  main.swift
//  ProtocolType
//
//  Created by Nat Kim on 2023/11/24.
//

import Foundation

protocol FullyNamed {
   var fullName: String { get }
}

struct Person: FullyNamed {
   var fullName: String
}

let nat = Person(fullName: "Nat Appleseed")

class Starship: FullyNamed {
   var prefix: String?
   var name: String
   
   init(name: String, prefix: String? = nil) {
      self.name = name
      self.prefix = prefix
   }
   
   var fullName: String {
      return (prefix != nil ? prefix! + " " : "") + name
   }
}

var ncc1701 = Starship(name: "Enterprise", prefix: "USS")
print(ncc1701)

var ncc1000 = Starship(name: "Benetar")
print(ncc1000)

protocol RandomNumberGenerator {
   func random() -> Double
}

class LinearGongruentialGenerator: RandomNumberGenerator {
   var lastRandom = 42.0
   let m = 139958.0
   let a = 3877.0
   let c = 29573.0
   
   func random() -> Double {
      lastRandom = ((lastRandom * a + c)
         .truncatingRemainder(dividingBy: m))
      return lastRandom / m
   }
}

let generator = LinearGongruentialGenerator()
print("Here's a random number: \(generator.random())")
//Here's a random number: 0.3747481387273325
print("And another one: \(generator.random())")
//And another one: 0.10983294988496549

// MARK: mutating func 요구사항
protocol Togglable {
   mutating func toggle()
}

enum OnOffSwitch: Togglable {
   case off, on
   mutating func toggle() {
      switch self {
      case .off:
         self = .on
      case .on:
         self = .off
      }
   }
}

var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()
