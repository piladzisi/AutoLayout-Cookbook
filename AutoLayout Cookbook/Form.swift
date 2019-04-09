//
//  Form.swift
//  AutoLayout Cookbook
//
//  Created by anna.sibirtseva on 09/04/2019.
//  Copyright © 2019 anna.sibirtseva. All rights reserved.
//

import UIKit

class FormViewController:UIViewController  {
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "Name"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var emailLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "Email"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "Password"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        view.addSubview(nameLabel)
        view.addSubview(nameTextField)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        
//Hugging priority is set to higher for labels in Interface builder, but not in code
        nameLabel.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
        emailLabel.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
        passwordLabel.setContentHuggingPriority(UILayoutPriority(251), for: .horizontal)
        
//        if #available(iOS 11, *) in this case no vertical concideration
        
        NSLayoutConstraint.activate([
            //Name
            nameTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            nameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            nameTextField.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 8.0),
            nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8.0),
            nameLabel.firstBaselineAnchor.constraint(equalTo: nameTextField.firstBaselineAnchor),
           
        //Email
            emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 8),
            emailTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            emailTextField.leadingAnchor.constraint(equalTo: emailLabel.trailingAnchor, constant: 8.0),
            emailLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8.0),
            emailLabel.firstBaselineAnchor.constraint(equalTo: emailTextField.firstBaselineAnchor),
            
            //Password
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 8),
            passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            passwordTextField.leadingAnchor.constraint(equalTo: passwordLabel.trailingAnchor, constant: 8.0),
            passwordLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 8.0),
            passwordLabel.firstBaselineAnchor.constraint(equalTo: passwordTextField.firstBaselineAnchor),
            nameTextField.widthAnchor.constraint(equalTo: emailTextField.widthAnchor, multiplier: 1.0),
            emailTextField.widthAnchor.constraint(equalTo: passwordTextField.widthAnchor, multiplier: 1.0)
            
        ])
    }
}
