//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Роман on 01.05.2023.
//

import Foundation
import UIKit

class ProfileHeaderView: UIView {
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc private func printStatus() {
        print(profileStatuslabel.text ?? "")
    }
    
    private func setupView() {
        addSubview(profileNameLabel)
        addSubview(profileStatuslabel)
        addSubview(profileUIСrutchLabel)
        addSubview(profileUIImageView)
        addSubview(profileUIButton)
        
        NSLayoutConstraint.activate([
            profileUIImageView.widthAnchor.constraint(equalToConstant: 120),
            profileUIImageView.heightAnchor.constraint(equalToConstant: 120),
            profileUIImageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 16),
            profileUIImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            
            profileNameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 27),
            profileNameLabel.leadingAnchor.constraint(equalTo: profileUIImageView.trailingAnchor, constant: 16),
            profileNameLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
            profileStatuslabel.leadingAnchor.constraint(equalTo: profileUIImageView.trailingAnchor, constant: 16),
            profileStatuslabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            profileStatuslabel.bottomAnchor.constraint(equalTo: profileUIButton.topAnchor, constant: -34),
            
            profileUIButton.topAnchor.constraint(equalTo: profileUIImageView.bottomAnchor, constant: 16),
            profileUIButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            profileUIButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            
        ])
    }
}
