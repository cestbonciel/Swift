//
//  main.swift
//  Exam_propertyObserver
//
//  Created by Nat Kim on 2024/01/24.
//

import Foundation

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("About to set totalSteps to \(newTotalSteps).")
        }
        
        didSet {
            if totalSteps > oldValue {
                print("Added \(totalSteps - oldValue) steps.")
            }
        }
    }
}

let stepCounter = StepCounter()
stepCounter.totalSteps = 200
// Print About to set totalSteps to 200.
// Print Added 200 steps.
stepCounter.totalSteps = 360
// Print About to set totalSteps to 360.
// Print Added 160 steps.
stepCounter.totalSteps = 10000
// About to set totalSteps to 10000.
// Added 9640 steps.
