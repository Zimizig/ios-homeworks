//
//  Post.swift
//  Navigation
//
//  Created by Роман on 07.02.2023.
//

import Foundation


struct PostModel {
    let author: String
    let description: String
    let image: String
    var likes: Int
    var views: Int
    
    static func getPosts()-> [PostModel] {
        let posts: [PostModel] =
        
        [
            PostModel(author: "Alex. About chinese Art", description: "Философия и духовность: Искусство Востока, такое как искусство Китая, Японии, Индии и других стран, часто отражает духовный и философский подход, связанный с буддизмом, конфуцианством, даосизмом и таоизмом. Восточное искусство стремится выразить гармонию и баланс, а также углубленное понимание космического порядка и человеческого существования. С другой стороны, искусство Запада, такое как европейское искусство, часто больше ориентировано на рациональность, человеческий разум и визуальное изображение мира.", image: "history", likes: 0, views: 0),
            PostModel(author: "Olga. Modern Policy", description: "Философия и духовность: Искусство Востока, такое как искусство Китая, Японии, Индии и других стран, часто отражает духовный и философский подход, связанный с буддизмом, конфуцианством, даосизмом и таоизмом. Восточное искусство стремится выразить гармонию и баланс, а также углубленное понимание космического порядка и человеческого существования. С другой стороны, искусство Запада, такое как европейское искусство, часто больше ориентировано на рациональность, человеческий разум и визуальное изображение мира.", image: "history", likes: 0, views: 0),
            PostModel(author: "Sonya. Georgaphy", description: "Философия и духовность: Искусство Востока, такое как искусство Китая, Японии, Индии и других стран, часто отражает духовный и философский подход, связанный с буддизмом, конфуцианством, даосизмом и таоизмом. Восточное искусство стремится выразить гармонию и баланс, а также углубленное понимание космического порядка и человеческого существования. С другой стороны, искусство Запада, такое как европейское искусство, часто больше ориентировано на рациональность, человеческий разум и визуальное изображение мира.", image: "history", likes: 0, views: 0),
            PostModel(author: "Kirill. History", description: "Философия и духовность: Искусство Востока, такое как искусство Китая, Японии, Индии и других стран, часто отражает духовный и философский подход, связанный с буддизмом, конфуцианством, даосизмом и таоизмом. Восточное искусство стремится выразить гармонию и баланс, а также углубленное понимание космического порядка и человеческого существования. С другой стороны, искусство Запада, такое как европейское искусство, часто больше ориентировано на рациональность, человеческий разум и визуальное изображение мира.", image: "history", likes: 0, views: 0)
        ]
        
        return posts
    }
}

struct PhotoModel {
    
    let photoName: String
    
    static func getPhotos()->[PhotoModel] {
        let photos = [
        PhotoModel(photoName: "1"),
        PhotoModel(photoName: "2"),
        PhotoModel(photoName: "3"),
        PhotoModel(photoName: "4"),
        PhotoModel(photoName: "5"),
        PhotoModel(photoName: "6"),
        PhotoModel(photoName: "7"),
        PhotoModel(photoName: "8"),
        PhotoModel(photoName: "9"),
        PhotoModel(photoName: "10"),
        PhotoModel(photoName: "11"),
        PhotoModel(photoName: "12"),
        PhotoModel(photoName: "13"),
        PhotoModel(photoName: "14"),
        PhotoModel(photoName: "15"),
        ]
        
        return photos
    }
    
    static func getFirstPhotos() -> [PhotoModel] {
        let photos = [
            PhotoModel(photoName: "1"),
            PhotoModel(photoName: "2"),
            PhotoModel(photoName: "3"),
            PhotoModel(photoName: "4"),
        ]
        return photos
    }
}
