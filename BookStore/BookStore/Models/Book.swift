//
//  Book.swift
//  BookStore
//
//  Created by Mickael Mas on 29/11/2021.
//

import Foundation
import SwiftUI

// Model
struct Book: Identifiable {
    let id = UUID()
    let title: String
    let author: String
    let description: String
    let pagesNumber: Int
    let category: BookCategory
}

enum BookCategory: String, CaseIterable {
    case fiction = "Fiction"
    case roman = "Roman"
    case education = "Eduction"
    case horreur = "Horreur"
    case code = "Code"
}

extension Book {
    static var books: [Book] {
        [.harryPotter, .batman, .xMen, .apprendreSwift, .seigneurDesAnneaux]
    }
    
    static var harryPotter: Book {
        Book(title: "Harry Potter et la chambre des secrets", author: "JK Rowling", description: "C'est un super livre", pagesNumber: 400, category: .fiction)
    }
    
    static var batman: Book {
        Book(title: "Batman", author: "DC Comics", description: "C'est un super livre", pagesNumber: 400, category: .fiction)
    }
    
    static var xMen: Book {
        Book(title: "XMen", author: "JK Rowling", description: "C'est un super livre", pagesNumber: 400, category: .fiction)
    }
    
    static var apprendreSwift: Book {
        Book(title: "Apprendre SwiftUI", author: "JK Rowling", description: "C'est un super livre de code", pagesNumber: 400, category: .code)
    }
    
    static var seigneurDesAnneaux: Book {
        Book(title: "Le Seigneur Des Anneaux", author: "JK Rowling", description: "C'est un super livre", pagesNumber: 400, category: .fiction)
    }
    
    static var steveJobs: Book {
        Book(title: "Steve Jobs", author: "Walker Isaac", description: "Un livre insprirant 🚀😊", pagesNumber: 500, category: .roman)
    }
}
