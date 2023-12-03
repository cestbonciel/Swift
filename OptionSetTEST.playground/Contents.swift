import UIKit

struct ShippingOptions: OptionSet {
   let rawValue: Int
   
   static let nextDay = ShippingOptions(rawValue: 1 << 0) // 1
   
   static let secondDay = ShippingOptions(rawValue: 1 << 1) // 2
   
   static let priority = ShippingOptions(rawValue: 1 << 2) // 4
   
   static let standard = ShippingOptions(rawValue: 1 << 3) // 8
   
   static let express: ShippingOptions = [.nextDay, .secondDay]
   static let all: ShippingOptions = [.express, .priority, .standard]
}

let singleOption: ShippingOptions = .priority
let multipleOptions: ShippingOptions = [.nextDay, .secondDay, .priority]
let noOptions: ShippingOptions = []

singleOption.rawValue
multipleOptions.rawValue
noOptions.rawValue
