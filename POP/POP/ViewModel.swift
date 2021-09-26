//
//  ViewModel.swift
//  POP
//
//  Created by Kirill on 24.09.2021.
//

import Foundation

struct ViewModel: POPViewDelegate {
    
    
    func getResultOfOperation(x: String, y: String, operatorSign: String) -> String {
        if let doubleX = Double(x), let doubleY = Double(y) {
            
            let result = String(POPLogic.shared.operation(x: doubleX, y: doubleY, operatorSign: operatorSign))
            
            DataBase.shared.appendList(x: x, y: y, operatornSign: operatorSign, result: result)
            return result
        }
        
        return "0.0"
    }
    

    

    

    
    
    
}
