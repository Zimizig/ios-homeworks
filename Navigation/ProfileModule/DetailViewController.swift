//
//  DetailViewController.swift
//  Navigation
//
//  Created by mac on 10.07.2023.
//

import UIKit

class DetailViewController: UIViewController, UINavigationBarDelegate {

    var titleText: String!
    var text: String!
    
    private lazy var navigationBar: UINavigationBar = {
        let height: CGFloat = 75
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: UIScreen.main.bounds.width, height: height))
        navbar.backgroundColor = UIColor.white
        navbar.delegate = self

        let navItem = UINavigationItem()
        navItem.title = titleText
        navItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(popVC))
        navbar.setItems([navItem], animated: true)
        return navbar
    }()
    
    
    lazy var descriptionText: UILabel = {
       let label = UILabel()
       label.numberOfLines = 0
       label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
       label.textColor = UIColor.black
       label.text = text
       //label.backgroundColor = .cyan
       label.translatesAutoresizingMaskIntoConstraints = false
       label.textAlignment = .left
        label.contentMode = .topLeft
       return label
   }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setUI()
        
    }
    
    private func setUI() {
        self.view.addSubview(navigationBar)
        self.view.addSubview(descriptionText)
        
        descriptionText.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor,constant: 75).isActive = true
        descriptionText.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor,constant: 16).isActive = true
        descriptionText.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor,constant: -16).isActive = true
        descriptionText.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
    }
    
    @objc func popVC(){
        navigationController?.popViewController(animated: true)
    }
}
