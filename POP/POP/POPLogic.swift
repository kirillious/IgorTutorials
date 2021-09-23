//
//  POPLogic.swift
//  POP
//
//  Created by Kirill on 23.09.2021.
//

import Foundation

protocol Operators {
    init(x: Double, y: Double)
    func operation() -> Double
}

struct POPSum: Operators {
    let x: Double
    let y: Double
    func operation() -> Double {
        return x + y
    }
    
}

struct POPMinus: Operators {
    let x: Double
    let y: Double
    func operation() -> Double {
        return x - y
    }
}

struct POPMultiply: Operators {
    let x: Double
    let y: Double
    func operation() -> Double {
        return x * y
    }
}

struct POPDivide: Operators {
    let x: Double
    let y: Double
    func operation() -> Double {
        return x / y
    }
}

