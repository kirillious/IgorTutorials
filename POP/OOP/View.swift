//
//  View.swift
//  POP
//
//  Created by Kirill on 23.09.2021.
//

import UIKit

class View {
    let view: UIView?
    
    init(view: UIView?) {
        self.view = view
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var firstTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .gray
        return textField
    }()
    
    lazy var secondTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .gray
        return textField
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [plusButton, minusButton, multiplyButton, divideButton, powerButton])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 5
        return stack
    }()
    
    private lazy var plusButton: UIButton = {
        let button = UIButton()
        button.setTitle("+", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var minusButton: UIButton = {
        let button = UIButton()
        button.setTitle("-", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var multiplyButton: UIButton = {
        let button = UIButton()
        button.setTitle("*", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var divideButton: UIButton = {
        let button = UIButton()
        button.setTitle("/", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var powerButton: UIButton = {
        let button = UIButton()
        button.setTitle("^", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var outputTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .gray
        return textField
    }()
    
    
    func createdView(controller: UIViewController) -> UIView {
        if let view = view {
            view.backgroundColor = .purple
            view.addSubview(firstTextField)
            view.addSubview(secondTextField)
            view.addSubview(stackView)
            view.addSubview(outputTextField)
            plusButton.addTarget(controller, action: #selector(ViewController.plusTapped(sender:)), for: .touchUpInside)
            minusButton.addTarget(controller, action: #selector(ViewController.minusTapped(sender:)), for: .touchUpInside)
            multiplyButton.addTarget(controller, action: #selector(ViewController.multiplyTapped(sender:)), for: .touchUpInside)
            divideButton.addTarget(controller, action: #selector(ViewController.divideTapped(sender:)), for: .touchUpInside)
            powerButton.addTarget(controller, action: #selector(ViewController.powerTapped(sender:)), for: .touchUpInside)
            setConst()
        }
        return view ?? UIView()
    }
    
    func setConst() {
        if let view = view {
            NSLayoutConstraint.activate([firstTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: view.frame.height * 0.3), firstTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: view.frame.width * 0.2), firstTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -view.frame.width * 0.2)])
            
            NSLayoutConstraint.activate([secondTextField.topAnchor.constraint(equalTo: firstTextField.bottomAnchor, constant: 30), secondTextField.leftAnchor.constraint(equalTo: firstTextField.leftAnchor), secondTextField.rightAnchor.constraint(equalTo: firstTextField.rightAnchor)])
            
            NSLayoutConstraint.activate([stackView.topAnchor.constraint(equalTo: secondTextField.bottomAnchor, constant: 30), stackView.leftAnchor.constraint(equalTo: firstTextField.leftAnchor), stackView.rightAnchor.constraint(equalTo: firstTextField.rightAnchor), stackView.heightAnchor.constraint(equalTo: firstTextField.heightAnchor, multiplier: 2.0)])
            
            NSLayoutConstraint.activate([outputTextField.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30), outputTextField.leftAnchor.constraint(equalTo: firstTextField.leftAnchor), outputTextField.rightAnchor.constraint(equalTo: firstTextField.rightAnchor)])
        }
    }
    
}
