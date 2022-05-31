//
//  Model.swift
//  AccessApp
//
//  Created by Artyom Guzenko on 27.05.2022.
//

import UIKit

struct User {
    let login: String
    let password: String
    let photoName: String
    
    var photo: UIImage {
        UIImage(named: photoName)!
    }
    
    static func getInfo() -> User {
       User(login: "user", password: "password", photoName: "image1")
    }
}
