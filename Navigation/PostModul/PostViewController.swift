//
//  PostViewController.swift
//  Navigation
//
//  Created by Роман on 07.02.2023.
//

import UIKit

class PostViewController: UIViewController {
    
    //private var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  title = post?.title
        view.backgroundColor = .systemCyan
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "info", style: .done, target: self, action: #selector(goToInfoVC))
    }
    
    @objc func goToInfoVC() {
        let vc = InfoViewController()
        present(vc, animated: true)
    }
}
