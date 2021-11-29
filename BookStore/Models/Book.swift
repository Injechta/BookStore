//
//  Book.swift
//  BookStore
//
//  Created by Mickael Mas on 29/11/2021.
//

import Foundation

// Model
struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let description: String
    let pagesNumber: Int
    let category: BookCategory
}

enum BookCategory: String {
    case fiction = "Fiction"
    case roman = "Roman"
    case education = "Eduction"
    case horreur = "Horreur"
    case code = "Code"
}

// Source de données
var books: [Book] = [
    Book(title: "Harry Potter et la chambre des secrets", author: "JK Rowling", description: "C'est un super livre", pagesNumber: 400, category: .fiction),
    Book(title: "Batman", author: "DC Comics", description: "C'est un super livre", pagesNumber: 400, category: .fiction),
    Book(title: "XMen", author: "JK Rowling", description: "C'est un super livre", pagesNumber: 400, category: .fiction),
    Book(title: "Apprendre SwiftUI", author: "JK Rowling", description: "C'est un super livre de code", pagesNumber: 400, category: .code),
    Book(title: "Le seigneur des anneaux", author: "JK Rowling", description: "C'est un super livre", pagesNumber: 400, category: .fiction)
]
