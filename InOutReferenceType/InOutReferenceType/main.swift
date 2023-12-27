//
//  main.swift
//  InOutReferenceType
//
//  Created by Nat Kim on 2023/12/12.
//

import Foundation

// MARK: STEP2

struct Person {
    enum Role: String {
        case customer
    }
    var customer: Role
    var money: Int
    
    mutating func order(_ coffees: [Coffee], of coffeeShop: inout CoffeeShop,
                        by name: String) {
        for coffee in coffees {
            guard let price: Int = coffeeShop.menu[coffee] else {
                print("판매하지 않는 커피 종류입니다.")
                return
            }
            if money >= price {
                coffeeShop.make(coffee, for: name)
                money -= price
            } else {
                let shortageAmount = price - money
                print("잔액이 \(shortageAmount)원만큼 부족합니다.")
            }
        }
    }
}

enum Coffee: String {
    case espresso
    case americano
    case cafeLatte
    case cappuchino
    case machiatto
    case cafeMocha
}

struct CoffeeShop {
    
    var sales: Int // 카페의 매출액
    var menu: [Coffee: Int]
    
    var pickUpTable: String? = ""
    
    // 커피 주문 메소드
    
    // 커피 제조 메소드
    mutating func make(_ coffee: Coffee, for name: String) {
        guard let price: Int = menu[coffee] else {
            print("판매하지 않는 커피 종류입니다.")
            return
        }
        if price > 0 {
            pickUpTable?.append(coffee.rawValue)
            sales += price
        }
        if let unwrappedPickUpTable = pickUpTable {
            print("\(name) 님이 주문하신 \(unwrappedPickUpTable)(이/가) 준비되었습니다. 픽업대에서 가져가주세요.")
        }
        
    }
}

// MARK: - 주문 픽업
var missKim: Person = Person(customer: Person.Role.customer, money: 20000)
var yagomBucks: CoffeeShop = .init(
    sales: 0,
    menu: [
        .americano: 3000,
        .cafeLatte: 4000,
        .cafeMocha: 4500,
        .cappuchino: 4500,
        .machiatto: 5000,
        .espresso: 2800
    ],
    pickUpTable: ""
)

missKim.order([.machiatto, .cafeMocha], of: &yagomBucks, by: "missKim")
print("yagombucks의 매출액이 \(yagomBucks.sales)원 만큼 증가했습니다.")

// MARK: - 잔액 모자른 case
var misterYa: Person = Person(customer: Person.Role.customer, money: 3300)
var starbucks: CoffeeShop = .init(
    sales: 0,
    menu: [
        .americano: 3000,
        .cafeLatte: 4000,
        .cafeMocha: 4500,
        .cappuchino: 4500,
        .machiatto: 5000,
        .espresso: 2800
    ],
    pickUpTable: ""
)
misterYa.order([.cafeMocha, .espresso], of: &starbucks, by: "misterYa")
