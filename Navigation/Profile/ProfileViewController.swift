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
    
    private let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .cyan
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    private func setUIElements() {
        self.view.addSubview(tableView)
    }
    
    private func setConstraints() {
         
    }
    
}

/*
Создайте массив из минимум четырех публикаций. Все данные, в том числе изображения для публикаций, используйте на свой вкус.
Вам нужно удалить весь ранее написанный код в классе ProfileViewController.
Внимание! Если вы выполнили прошлое задание не в отдельном классе-наследнике UIView, то нужно перенести всю верстку в отдельный файл ProfileTableHederView.swift, в котором должен быть класс-наследник UIView с именем ProfileHeaderView.

Добавьте экземпляр класса UITableView и закрепите его к краям экрана.
Класс ProfileViewController должен реализовать протоколы UITableViewDelegate и UITableViewDataSource. Примените extension инструмент.
Ранее созданный массив с публикациями используйте в качестве источника данных для таблицы.
Используйте ProfileTableHederView в качестве HeaderForSection для нулевой секции.
Создайте файл PostTableViewCell.swift и добавьте в него класс UITableViewCell с именем PostTableViewCell.
Реализуйте верстку в только что созданном классе согласно макету Lesson_6_Layout_3. Используйте Auto Layout.
Используйте созданную ячейку для отображения контента публикации.
*/
