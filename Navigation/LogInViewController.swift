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
    
    
     lazy var loginTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 10
        textField.layer.borderWidth = 0.5
        textField.backgroundColor = .systemGray6
        textField.layer.borderColor = UIColor.lightGray.cgColor
        textField.textColor = .black
        textField.placeholder = "Your e-mail or phone number"
        textField.font = UIFont.systemFont(ofSize: 16)
        textField.tintColor = UIColor.placeholderText
        textField.autocapitalizationType = .none
        textField.delegate = self
        return textField
    }()
    
   lazy var passwordTextField: UITextField = {
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
        textField.delegate = self
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
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "BlueHex")
        button.layer.cornerRadius = 10
        button.setTitle("Login", for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    
    var isShowingKeybord = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupConstraints()
        setKeyboardNotification()
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
    
    
    @objc func buttonPressed() {
        
        if loginTextField.text == "" {
            
            UIView.animate(withDuration: 0.5) {
                self.loginTextField.backgroundColor = UIColor.red
            } completion: { bool in
                
                UIView.animate(withDuration: 0.5) {
                    self.loginTextField.backgroundColor = UIColor.systemGray6
                }
                
        }
    }      else if passwordTextField.text == "" {
        
        UIView.animate(withDuration: 0.5) {
            self.passwordTextField.backgroundColor = .red
        } completion: { bool in
            UIView.animate(withDuration: 0.5) {
                self.passwordTextField.backgroundColor = UIColor.systemGray6
            }
    }
        
        } else {
            let profileVC = ProfileViewController()
            navigationController?.pushViewController(profileVC, animated: true)
        }
        
    }
    

    
    private func setKeyboardNotification() {
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        }
    @objc func keyboardWillShow(notification: Notification) {
            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                if isShowingKeybord {
                    self.view.frame.origin.y = -keyboardSize.height/2
                }
            }
        }
    @objc func keyboardWillHide(notification: Notification) {
            self.view.frame.origin.y = 0
        }
}

extension LogInViewController: UITextFieldDelegate {

override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    super.touchesBegan(touches, with: event)
    self.view.endEditing(true)
}
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        isShowingKeybord = true
        button.alpha = 0.8
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        isShowingKeybord = false
        button.alpha = 1
        
    }

}

    
 
        
        
 
    
        
    
    


