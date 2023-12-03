import UIKit

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

protocol SomeProtocol {
   init(someParameter: Int)
}

class SomeClass: SomeProtocol {
   required init(someParameter: Int) {
      // 이니셜라이저 구현
   }
}

