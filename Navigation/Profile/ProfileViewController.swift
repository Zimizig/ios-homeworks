//
//  SecondProfileViewController.swift
//  Navigation
//
//  Created by Роман on 01.05.2023.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
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
}
