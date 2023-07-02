//
//  LogInViewController.swift
//  Navigation
//
//  Created by mac on 02.07.2023.
//

import UIKit

class LogInViewController: UIViewController {

    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "logo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    
    let loginTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 0.5
        textField.backgroundColor = .systemGray6
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.textColor = .black
        textField.placeholder = "Your e-mail or phone number"
        textField.font = UIFont.systemFont(ofSize: 16)
        //textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
        textField.tintColor = UIColor.placeholderText
        textField.autocapitalizationType = .none
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 0.5
        textField.backgroundColor = .systemGray6
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.textColor = .black
        textField.tintColor = UIColor.placeholderText
        textField.placeholder = "password"
        textField.isSecureTextEntry = true
        textField.font = UIFont.systemFont(ofSize: 16)
        //textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 5))
        textField.autocapitalizationType = .none
        return textField
    }()
    
    let textFieldsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        //stackView.backgroundColor = .green
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "BlueHex")
        button.layer.cornerRadius = 10
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupConstraints()
    }
    
    private func setupView(){
        self.view.addSubview(imageView)
        textFieldsStackView.addArrangedSubview(loginTextField)
        textFieldsStackView.addArrangedSubview(passwordTextField)
        self.view.addSubview(textFieldsStackView)
        self.view.addSubview(button)
        
    }

    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            //ImageView
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 120),
            
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
         
            //StackView
            textFieldsStackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120),
            textFieldsStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            textFieldsStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            textFieldsStackView.heightAnchor.constraint(equalToConstant: 100),
            
            //Button
            
            button.heightAnchor.constraint(equalToConstant: 50),
            button.topAnchor.constraint(equalTo: textFieldsStackView.bottomAnchor, constant: 16),
            button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
        
        ])
        
    }
}

    
 
        
        
 
    
        
    
    


