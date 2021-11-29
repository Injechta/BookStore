//
//  ContentView.swift
//  BookStore
//
//  Created by Mickael Mas on 29/11/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            List(books) { book in
                NavigationLink {
                    BookDetailView(book: book)
                } label: {
                    VStack(alignment: .leading) {
                        Text(book.title)
                            .font(.title3)
                            .bold()
                        Text(book.category.rawValue)
                            .foregroundColor(.blue)
                    }
                }
            }
            .navigationTitle("Livres")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
