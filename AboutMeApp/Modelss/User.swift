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
            person: Person(
                firstName: "Sasha",
                lastName: "Mamlygo",
                country: "Armenia",
                company: "Manychat",
                department: "Finance",
                bio: """
                A lot of text
                More text
                Even more text
                """
            )
        )
    }
}



struct Person {
    let firstName: String
    let lastName: String
    let country: String
    let company: String
    let department: String
    
    let bio: String
    
    var fullName: String {
        firstName + " " + lastName
    }    
}

