//
//  Post.swift
//  Navigation
//
//  Created by Роман on 07.02.2023.
//

import Foundation

struct Post {
    let title: String
    
}

struct PostModel {
    let author: String
    let description: String
    let image: String
    let likes: Int
    let views: Int
}

var posts = [
    
PostModel(author: "Alex", description: "About chinese Art", image: "logo", likes: 50, views: 100),
PostModel(author: "Olga", description: "Modern Policy", image: "logo", likes: 30, views: 120),
PostModel(author: "Sonya", description: "History", image: "logo", likes: 70, views: 90),
PostModel(author: "Kirill", description: "Geography", image: "logo", likes: 30, views: 40)

]

/*
Создайте модель публикации Post, она должна содержать следующие поля: author: String - никнейм автора публикации description: String - текст публикации image: String - имя картинки из каталога Assets.xcassets likes: Int - количество лайков views: Int - количество просмотров

*/
