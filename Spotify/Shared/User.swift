//
//  User.swift
//  Spotify
//
//  Created by Summer Crow on 2024-05-03.
//

import Foundation


struct UserArray: Codable {
    let users: [User]
    let total, skip, limit: Int
}

struct User: Codable, Identifiable {
    let id: Int
    let firstName, lastName: String
    let age: Int
    let email, phone, username, password: String
    let image: String
    let height: Int
    let weight: Double
    
    static var mock: User {
        User(
            id: 666,
            firstName: "Bob",
            lastName: "Glob",
            age: 45,
            email: "bobGlob@flob.com",
            phone: "739-388-3883",
            username: "username",
            password: "password",
            image: Constants.randomImage,
            height: 3,
            weight: 134.4
        )    }
}
