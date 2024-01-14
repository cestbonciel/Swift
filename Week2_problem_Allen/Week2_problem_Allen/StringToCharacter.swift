//
//  main.swift
//  Week2_problem_Allen
//
//  Created by Nat Kim on 2024/01/14.
//

import Foundation

func printRandomString(strs: String) -> Character {
    var result: Character = " "
    let slice = ArraySlice(strs)
    if let randomChar = slice.randomElement() {
        result = randomChar
    }
    
    return result
}


print(printRandomString(strs: "NatSwift"))


