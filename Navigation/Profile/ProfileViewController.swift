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
        
    PostModel(author: "Alex. About chinese Art", description: "1. Философия и духовность: Искусство Востока, такое как искусство Китая, Японии, Индии и других стран, часто отражает духовный и философский подход, связанный с буддизмом, конфуцианством, даосизмом и таоизмом. Восточное искусство стремится выразить гармонию и баланс, а также углубленное понимание космического порядка и человеческого существования. С другой стороны, искусство Запада, такое как европейское искусство, часто больше ориентировано на рациональность, человеческий разум и визуальное изображение мира.", image: "history", likes: 50, views: 100),
    PostModel(author: "Olga. Modern Policy", description: "1. Философия и духовность: Искусство Востока, такое как искусство Китая, Японии, Индии и других стран, часто отражает духовный и философский подход, связанный с буддизмом, конфуцианством, даосизмом и таоизмом. Восточное искусство стремится выразить гармонию и баланс, а также углубленное понимание космического порядка и человеческого существования. С другой стороны, искусство Запада, такое как европейское искусство, часто больше ориентировано на рациональность, человеческий разум и визуальное изображение мира.", image: "history", likes: 30, views: 120),
    PostModel(author: "Sonya. Georgaphy", description: "1. Философия и духовность: Искусство Востока, такое как искусство Китая, Японии, Индии и других стран, часто отражает духовный и философский подход, связанный с буддизмом, конфуцианством, даосизмом и таоизмом. Восточное искусство стремится выразить гармонию и баланс, а также углубленное понимание космического порядка и человеческого существования. С другой стороны, искусство Запада, такое как европейское искусство, часто больше ориентировано на рациональность, человеческий разум и визуальное изображение мира.", image: "history", likes: 70, views: 90),
    PostModel(author: "Kirill. History", description: "1. Философия и духовность: Искусство Востока, такое как искусство Китая, Японии, Индии и других стран, часто отражает духовный и философский подход, связанный с буддизмом, конфуцианством, даосизмом и таоизмом. Восточное искусство стремится выразить гармонию и баланс, а также углубленное понимание космического порядка и человеческого существования. С другой стороны, искусство Запада, такое как европейское искусство, часто больше ориентировано на рациональность, человеческий разум и визуальное изображение мира.", image: "history", likes: 30, views: 40)

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
        cell.configure(post: posts[indexPath.row])
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
