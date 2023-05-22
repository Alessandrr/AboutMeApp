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
                age: 21,
                country: "Armenia",
                company: "Manychat",
                department: "Finance",
                bio: """
                Привет! Я Саша, учился в Питере на менеджменте, работал в налоговом консалтинге, \
                уехал не закончив вуз и за 2022 успел пожить в Армении, в Турции, и снова в Армении. Окончательно вернулся \
                в Армению работать в Manychat. У вас на канале даже есть интервью с нашим lead iOS \
                разработичком)) Пока не очень спешу уходить из финансов, но уже понимаю что разиваться в разработке тоже \
                было бы крайне интересно
                """
            )
        )
    }
}



struct Person {
    let firstName: String
    let lastName: String
    let age: Int
    let country: String
    let company: String
    let department: String
    
    let bio: String
    
    var fullName: String {
        firstName + " " + lastName
    }    
}

