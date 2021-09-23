//
//  Logic.swift
//  POP
//
//  Created by Kirill on 23.09.2021.
//

import Foundation

class Operation {
    
    let x: Double
    let y: Double
    
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
}

class Sum: Operation {
    func sumUp() -> Double {
        return x + y
    }
}

class Minus: Operation {
    func substract() -> Double {
        return x - y
    }
}

class Multiply: Operation {
    func multiply() -> Double {
        return x * y
    }
}

class Divide: Operation {
    func divide() -> Double {
        return x / y
    }
}
    

