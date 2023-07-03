//
//  SecondProfileViewController.swift
//  Navigation
//
//  Created by Роман on 01.05.2023.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    var posts = [
        
    PostModel(author: "Alex", description: "About chinese Art", image: "logo", likes: 50, views: 100),
    PostModel(author: "Olga", description: "Modern Policy", image: "logo", likes: 30, views: 120),
    PostModel(author: "Sonya", description: "History", image: "logo", likes: 70, views: 90),
    PostModel(author: "Kirill", description: "Geography", image: "logo", likes: 30, views: 40)

    ]
    
    lazy private var tableView: UITableView = {
        let tableView = UITableView()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.register(ProfileHeaderView.self, forHeaderFooterViewReuseIdentifier: "header")
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: "cell")
        
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUIElements()
        setConstraints()
    }
    
    private func setUIElements() {
        self.view.addSubview(tableView)
    }
    
    private func setConstraints() {
        tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
    }
    
}

extension ProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        posts.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! PostTableViewCell
        cell.setup(post: posts[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = ProfileHeaderView(reuseIdentifier: "header")
        return header
    }
    
    
}

/*
Создайте файл PostTableViewCell.swift и добавьте в него класс UITableViewCell с именем PostTableViewCell.
Реализуйте верстку в только что созданном классе согласно макету Lesson_6_Layout_3. Используйте Auto Layout.
Используйте созданную ячейку для отображения контента публикации.
*/
