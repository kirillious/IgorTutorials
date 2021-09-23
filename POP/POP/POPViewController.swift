//
//  POPViewController.swift
//  POP
//
//  Created by Kirill on 23.09.2021.
//

import UIKit

class POPViewController: UIViewController {
    
    var view1 = POPView(view: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        view1 = POPView(view: self.view)
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
        let sum = POPSum(x: stringToDouble(text: view1.firstTextField.text), y: stringToDouble(text: view1.secondTextField.text))
        view1.outputTextField.text = String(sum.operation())
    }
    
    @objc func minusTapped(sender: UIButton) {
        let minus = POPMinus(x: stringToDouble(text: view1.firstTextField.text), y: stringToDouble(text: view1.secondTextField.text))
        view1.outputTextField.text = String(minus.operation())
    }
    
    @objc func multiplyTapped(sender: UIButton) {
        let muliple = POPMultiply(x: stringToDouble(text: view1.firstTextField.text), y: stringToDouble(text: view1.secondTextField.text))
        view1.outputTextField.text = String(muliple.operation())
    }
    
    @objc func divideTapped(sender: UIButton) {
        let divide = POPDivide(x: stringToDouble(text: view1.firstTextField.text), y: stringToDouble(text: view1.secondTextField.text))
        view1.outputTextField.text = String(divide.operation())
    }


}
