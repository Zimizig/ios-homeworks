//
//  DetailViewController.swift
//  Navigation
//
//  Created by mac on 10.07.2023.
//

import UIKit

class DetailViewController: UIViewController, UINavigationBarDelegate {

    private let windth = UIScreen.main.bounds.width
    private let height = UIScreen.main.bounds.height
    
    private lazy var navigationBar: UINavigationBar = {
        let height: CGFloat = 75
        let navbar = UINavigationBar(frame: CGRect(x: 0, y: 50, width: UIScreen.main.bounds.width, height: height))
        navbar.backgroundColor = UIColor.white
        navbar.delegate = self

        let navItem = UINavigationItem()
        navItem.title = "Post"
        navItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(popVC))
        navbar.setItems([navItem], animated: true)
        return navbar
    }()
    
    
    lazy var descriptionText: UILabel = {
       let label = UILabel(frame: CGRect(x: 0, y: 0, width: (windth), height: height))
       label.numberOfLines = 0
       label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
       label.textColor = UIColor.systemGray
        label.backgroundColor = .cyan
       label.textAlignment = .left
       return label
   }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setUI()
        
    }
    
    private func setUI() {
        self.view.addSubview(navigationBar)
       // self.view.addSubview(descriptionText)
    }
    
    @objc func popVC(){
        navigationController?.popViewController(animated: true)
    }
    

}
