//
//  ContentView.swift
//  BookStore
//
//  Created by Mickael Mas on 29/11/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isAddPresented = false
    // Source de données
    @State private var books: [Book] = [
        Book(title: "Harry Potter et la chambre des secrets", author: "JK Rowling", description: "C'est un super livre", pagesNumber: 400, category: .fiction),
        Book(title: "Batman", author: "DC Comics", description: "C'est un super livre", pagesNumber: 400, category: .fiction),
        Book(title: "XMen", author: "JK Rowling", description: "C'est un super livre", pagesNumber: 400, category: .fiction),
        Book(title: "Apprendre SwiftUI", author: "JK Rowling", description: "C'est un super livre de code", pagesNumber: 400, category: .code),
        Book(title: "Le seigneur des anneaux", author: "JK Rowling", description: "C'est un super livre", pagesNumber: 400, category: .fiction)
    ]
    
    var body: some View {
        
        NavigationView {
            List(books) { book in
                NavigationLink {
                    BookDetailView(book: book)
                } label: {
                    BookCell(book: book)
                }
            }
            .navigationTitle("Livres")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isAddPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isAddPresented) {
                AddBookView(books: $books, isAddPresented: $isAddPresented)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
.previewInterfaceOrientation(.portraitUpsideDown)
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
