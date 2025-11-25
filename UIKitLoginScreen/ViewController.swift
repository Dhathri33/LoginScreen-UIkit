//
//  ViewController.swift
//  UIKitLoginScreen
//
//  Created by Dhathri Bathini on 11/25/25.
//

import UIKit

class ViewController: UIViewController {
    
    let emailTextField = {
        let emailTextField = UITextField()
        emailTextField.placeholder = "Enter your email"
        emailTextField.keyboardType = .emailAddress
        emailTextField.autocapitalizationType = .none
        emailTextField.borderStyle = .roundedRect
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        return emailTextField
    }()
    
    let passwordTextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Enter your password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        return passwordTextField
    }()

    let loginButton = {
        let loginButton = UIButton(type: .system)
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemBlue
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.layer.cornerRadius = 8
        return loginButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}

extension ViewController {
    func setupUI() {
        let vStack = UIStackView(arrangedSubviews: [emailTextField,passwordTextField,loginButton])
        vStack.axis = .vertical
        vStack.spacing = 20
        vStack.alignment = .center
        vStack.distribution = .fillEqually
        vStack.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(vStack)
        
        NSLayoutConstraint.activate([
            vStack.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            vStack.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            vStack.widthAnchor.constraint(equalToConstant: 350),
            vStack.heightAnchor.constraint(equalToConstant: 200),
            emailTextField.widthAnchor.constraint(equalToConstant: 350),
            emailTextField.heightAnchor.constraint(equalToConstant: 50),
            passwordTextField.widthAnchor.constraint(equalToConstant: 350),
            passwordTextField.heightAnchor.constraint(equalToConstant: 50),
            loginButton.widthAnchor.constraint(equalToConstant: 350),
            loginButton.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
}
