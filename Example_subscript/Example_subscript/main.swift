//
//  main.swift
//  Example_subscript
//
//  Created by Nat Kim on 2023/12/30.
//

import Foundation

struct TimesTable {
    let multiplier: Int
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)
print("six times three is \(threeTimesTable[6]).")
// six times three is 18.

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && row < rows && column >= 0 && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[(row * columns) + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[(row * columns) + column] = newValue
        }
    }
}

var firstMatrix = Matrix(rows: 2, columns: 2)
print("lst Matrix: \(firstMatrix)")

var secondMatrix = Matrix(rows: 4, columns: 4)
print("2nd Matrix: \(secondMatrix)")

firstMatrix[0, 1] = 1.5
firstMatrix[1, 0] = 3.2

print("new 1st Matrix: \(firstMatrix)")

//let someValue = firstMatrix[2, 2]
// Thread 1: Assertion failed: Index out of range

enum Planet: Int {
case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    static subscript(n: Int) -> Planet {
        return Planet(rawValue: n)!
    }
}

let mars = Planet[4]
print(mars)
