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
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 60
        image.layer.borderWidth = 3
        image.layer.borderColor = UIColor.white.cgColor
        image.clipsToBounds = true
        image.image = UIImage(named: "Pepedie")
        return image
    }()
    
    private lazy var profileUIButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Show status", for: .normal)
        button.titleLabel?.textColor = .white
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 17        //Реальное значение радиуса на макете отличается!
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 4, height: 4)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 4
        button.addTarget(self, action: #selector(printStatus), for: .touchUpInside)
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
        print(profileStatuslabel.text ?? "")
    }
    
    private func setupView() {
        addSubview(statusTextField)
        addSubview(profileNameLabel)
        addSubview(profileStatuslabel)
        addSubview(profileUIСrutchLabel)
        addSubview(profileUIImageView)
        addSubview(profileUIButton)
        
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
            statusTextField.leadingAnchor.constraint(equalTo: profileUIImageView.trailingAnchor, constant: 10)
        ])
    }
}

//Profile view Controller 

/*
 private lazy var profileHeader: ProfileHeaderView = {
     let view = ProfileHeaderView()
     view.backgroundColor = .lightGray
     view.translatesAutoresizingMaskIntoConstraints = false
     return view
 }()
 
 private lazy var setTitleButton: UIButton = {
     let button = UIButton()
     button.translatesAutoresizingMaskIntoConstraints = false
     button.backgroundColor = .systemRed
     button.setTitle("change title", for: .normal)
     
     return button
 }()
 
 
 override func viewDidLoad() {
     super.viewDidLoad()
     
     view.backgroundColor = .white
     title = "Profile"
     
     setupView()
 }
 
 func setupView() {
     view.addSubview(profileHeader)
     view.addSubview(setTitleButton)
     
     
     NSLayoutConstraint.activate([
         profileHeader.heightAnchor.constraint(equalToConstant: 220),
         profileHeader.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
         profileHeader.leadingAnchor.constraint(equalTo: view.leadingAnchor),
         profileHeader.trailingAnchor.constraint(equalTo: view.trailingAnchor),
         
         setTitleButton.heightAnchor.constraint(equalToConstant: 100),
         setTitleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
         setTitleButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
         setTitleButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
     ])
 }
 
 
 
 
 */


/*
import Foundation
import UIKit

class photoTableHeaderView: UITableViewHeaderFooterView {

    private lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 24))
        label.text = "Photos"
        label.backgroundColor = .cyan
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        //label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        addSubview(titleLabel)
        
        //setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() {
        
        addSubview(titleLabel)
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
    
    private func setConstraints(){
        
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leftAnchor, constant: 12).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
    }
}
*/
