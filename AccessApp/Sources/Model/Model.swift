//
//  Model.swift
//  AccessApp
//
//  Created by Artyom Guzenko on 27.05.2022.
//

struct User {
    let login: String
    let password: String
    
    static func getInfo() -> User {
        User(login: "user", password: "password")
    }
}
