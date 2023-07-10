//
//  DataManeger.swift
//  Navigation
//
//  Created by mac on 10.07.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    
    static func getPasswordAndLogin() -> User {
        let user = User(login: "user", password: "password")
        return user
    }
}
