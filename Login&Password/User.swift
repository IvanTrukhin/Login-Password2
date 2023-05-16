//
//  User.swift
//  Login&Password
//
//  Created by Ivan on 16.05.2023.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person

    static func getUserData() -> User {
        User(login: "User", password: "Password", person: Person(name: "Ivan", surname: "Trukhin"))
    }
}

struct Person {
    let name: String
    let surname: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
