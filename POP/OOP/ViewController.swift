//
//  ViewController.swift
//  POP
//
//  Created by Kirill on 23.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var view1 = View(view: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        view1 = View(view: view)
        view = view1.createdView(controller: self)
    }
    
    func stringToDouble(text: String?) -> Double {
        if let doubleString = text {
            if let double = Double(doubleString) {
                return double
            }
        }
        return 0.0
    }
    
    
    @objc func plusTapped(sender: UIButton) {
        let sum = Sum(x: stringToDouble(text: view1.firstTextField.text), y: stringToDouble(text: view1.secondTextField.text))
        view1.outputTextField.text = String(sum.sumUp())
    }
    
    @objc func minusTapped(sender: UIButton) {
        let minus = Minus(x: stringToDouble(text: view1.firstTextField.text), y: stringToDouble(text: view1.secondTextField.text))
        view1.outputTextField.text = String(minus.substract())
    }
    
    @objc func multiplyTapped(sender: UIButton) {
        let multiply = Multiply(x: stringToDouble(text: view1.firstTextField.text), y: stringToDouble(text: view1.secondTextField.text))
        view1.outputTextField.text = String(multiply.multiply())
    }
    
    @objc func divideTapped(sender: UIButton) {
        let divide = Divide(x: stringToDouble(text: view1.firstTextField.text), y: stringToDouble(text: view1.secondTextField.text))
        view1.outputTextField.text = String(divide.divide())
    }
    
    @objc func powerTapped(sender: UIButton) {
        let power = ToPower(x: stringToDouble(text: view1.firstTextField.text), y: stringToDouble(text: view1.secondTextField.text))
        view1.outputTextField.text = String(power.multiply())
    }
}

