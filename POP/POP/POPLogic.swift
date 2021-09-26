//
//  POPLogic.swift
//  POP
//
//  Created by Kirill on 23.09.2021.
//

import Foundation

protocol Operators {
    func operation(x: Double, y: Double, operatorSign: String) -> Double
}


struct POPLogic: Operators {
    
    static let shared = POPLogic()
    
    func operation(x: Double, y: Double, operatorSign: String) -> Double {
        switch operatorSign {
        case "+":
            return x + y
        case "-":
            return x - y
        case "*":
            return x * y
        default:
            return x / y
        }
    }
}

