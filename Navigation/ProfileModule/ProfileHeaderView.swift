//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Роман on 01.05.2023.
//

import Foundation
import UIKit

class ProfileHeaderView: UITableViewHeaderFooterView {
    
    private lazy var statusTextField: UITextField = {
        let statusTextField = UITextField()
        statusTextField.translatesAutoresizingMaskIntoConstraints = false
        statusTextField.layer.cornerRadius = 12
        statusTextField.backgroundColor = .white
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.leftView = UIView(frame: CGRect(x: 0, y: 10, width: 10, height: 0))
        statusTextField.leftViewMode = .always
        return statusTextField
    }()
    
    private lazy var profileNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Sad pepe"
        label.font = UIFont(name: "bold", size: 18)
        label.textAlignment = .center
        label.backgroundColor = UIColor.clear
        return label
    }()
    
    private lazy var profileStatuslabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Waiting for something..."
        label.textColor = .gray
        label.font = UIFont(name: "regular", size: 14)
        label.textAlignment = .center
        return label
    }()
    
    private lazy var profileUIСrutchLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = UIColor.white
        return label
    }()
    
    private lazy var profileUIImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        image.layer.cornerRadius = 60
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.clipsToBounds = true
        image.image = UIImage(named: "15")
        image.isUserInteractionEnabled = true
        let gesture = UITapGestureRecognizer(target: self, action: #selector(animate))
        image.addGestureRecognizer(gesture)
        return image
    }()
    
    private lazy var profileUIButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Show status", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 17
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
        button.addTarget(self, action: #selector(printStatus), for: .touchUpInside)
        return button
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "xmark")
        button.setImage(image, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.layer.borderColor = UIColor.white.cgColor
        button.alpha = 0.5
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(rewardAnimation), for: .touchUpInside)
        return button
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func printStatus() {
        if statusTextField.text == "" {
            statusTextField.backgroundColor = UIColor.red
        } else {
            print(profileStatuslabel.text ?? "")
        }
    }
    
    @objc func animate() {
      
        let centerX =  UIScreen.main.bounds.midX
        let cenerY = UIScreen.main.bounds.midY
        let windth = UIScreen.main.bounds.width
        let height = UIScreen.main.bounds.height
        
        UIView.animate(withDuration: 0.5, delay: 0) {
            self.profileUIImageView.layer.cornerRadius = 0
            self.profileUIButton.isHidden = true
            self.profileUIImageView.translatesAutoresizingMaskIntoConstraints = true
            self.profileUIImageView.frame.size = CGSize(width: windth, height: height)
            self.profileUIImageView.center = CGPoint(x: centerX, y: cenerY)
            self.profileUIImageView.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.9)
        } completion: { bool in
            UIView.animate(withDuration: 0.5) {
                self.closeButton.isHidden = false
            }
        }
    }
    
    
    @objc func rewardAnimation(){
        
        UIView.animate(withDuration: 0.5, delay: 0) {
            self.profileUIImageView.frame.size = CGSize(width: 120, height: 120)
            self.profileUIImageView.layer.cornerRadius = 60
            self.closeButton.isHidden = true
            
            self.profileUIImageView.translatesAutoresizingMaskIntoConstraints = false
        } completion: { bool in
            self.profileUIButton.isHidden = false
        }
    }
    
    private func setupView() {
        addSubview(statusTextField)
        addSubview(profileNameLabel)
        addSubview(profileStatuslabel)
        addSubview(profileUIСrutchLabel)
        addSubview(profileUIImageView)
        addSubview(closeButton)
        addSubview(profileUIButton)
        
        closeButton.isHidden = true
        
        NSLayoutConstraint.activate([
            
            self.heightAnchor.constraint(equalToConstant: 220),
            profileUIImageView.widthAnchor.constraint(equalToConstant: 120),
            profileUIImageView.heightAnchor.constraint(equalToConstant: 120),
            profileUIImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            profileUIImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            profileNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            profileNameLabel.leadingAnchor.constraint(equalTo: profileUIImageView.trailingAnchor, constant: 16),
            profileNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            profileStatuslabel.leadingAnchor.constraint(equalTo: profileUIImageView.trailingAnchor, constant: 16),
            profileStatuslabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            profileStatuslabel.bottomAnchor.constraint(equalTo: statusTextField.topAnchor, constant: -16),
            
            profileUIButton.widthAnchor.constraint(equalToConstant: 50),
            profileUIButton.topAnchor.constraint(equalTo: statusTextField.bottomAnchor, constant: 16),
            profileUIButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            profileUIButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            profileUIButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -8),
            
            statusTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            statusTextField.heightAnchor.constraint(equalToConstant: 40),
            statusTextField.topAnchor.constraint(equalTo: profileStatuslabel.bottomAnchor, constant: 10),
            statusTextField.leadingAnchor.constraint(equalTo: profileUIImageView.trailingAnchor, constant: 10),
            
            closeButton.topAnchor.constraint(equalTo: topAnchor, constant: UIScreen.main.bounds.height/5),
            closeButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            closeButton.widthAnchor.constraint(equalToConstant: 50),
            closeButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

