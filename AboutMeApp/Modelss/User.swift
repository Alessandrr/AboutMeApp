//
//  User.swift
//  AboutMeApp
//
//  Created by Aleksandr Mamlygo on 19.05.23.
//

import Foundation

struct User {
    let login: String
    let password: String
    
    let person: Person
    
    static func getUser() -> User {
        return User(
            login: "User",
            password: "admin",
            person: Person(firstName: "Sasha", secondName: "Mamlygo")
        )
    }
}



struct Person {
    let firstName: String
    let secondName: String
    
    var fullName: String {
        firstName + " " + secondName
    }    
}

