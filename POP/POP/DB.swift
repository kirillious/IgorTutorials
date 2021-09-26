//
//  DB.swift
//  POP
//
//  Created by Kirill on 24.09.2021.
//

import Foundation

struct DataBase {
    static var shared = DataBase()
    var listOfOperations: [DataModel] = []
    
    mutating func appendList(x: String, y: String, operatornSign: String, result: String) {
        let dataModel = DataModel(x: x, y: y, sign: operatornSign, result: result)
        listOfOperations.append(dataModel)
    }
}
