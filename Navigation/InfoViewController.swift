//
//  InfoViewController.swift
//  Navigation
//
//  Created by Роман on 07.02.2023.
//

import UIKit

class InfoViewController: UIViewController {
    private let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.setTitle("Ошибка", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        button.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
    }
    @objc func showAlert() {
        let alert = UIAlertController(title: "Ошибка", message: "Произошла ошибка", preferredStyle: .alert)
        let tryAgainAction = UIAlertAction(title: "Попробовать снова", style: .default) { _ in
            print ("Попробовать снова")
        }
        alert.addAction(tryAgainAction)
        let cancelAction = UIAlertAction(title: "Понятно", style: .destructive) { _ in
            print ("Понятно")
        }
        alert.addAction(cancelAction)
        present(alert, animated: true)
    }
}
