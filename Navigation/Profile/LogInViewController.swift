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
        textField.backgroundColor = .systemGray
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.textColor = .black
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.tintColor = UIColor.placeholderText
        textField.autocapitalizationType = .none
        return textField
    }()
    
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 0.5
        textField.backgroundColor = .systemGray
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.textColor = .black
        textField.tintColor = UIColor.placeholderText
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.autocapitalizationType = .none
        return textField
    }()
    
    let textFieldsStackView: UIStackView = {
        let stackView = UIStackView(frame: CGRect(x: 10, y: 10, width: 200, height: 100))
        stackView.axis = .vertical
        stackView.spacing = 0
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .green
        //stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupConstraints()
    }
    
    private func setupView(){
        self.view.addSubview(imageView)
        self.view.addSubview(textFieldsStackView)
        
    }

    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            
            //ImageView
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 120),
            //imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            //imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 16),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
         /*
            //StackView
            textFieldsStackView.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120),
            textFieldsStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 16),
            textFieldsStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -16),
            textFieldsStackView.heightAnchor.constraint(equalToConstant: 100)
        */
        ])
        
        
    }
    

}
