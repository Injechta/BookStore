//
//  BookDetailView.swift
//  BookStore
//
//  Created by Mickael Mas on 29/11/2021.
//

import SwiftUI

struct BookDetailView: View {
    let book: Book
    
    var body: some View {
        VStack {
            Text(book.title)
                .font(.title)
                .bold()
            
            Text(book.category.rawValue)
            
            Text(book.description)
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BookDetailView(book: books[1])
    }
}
