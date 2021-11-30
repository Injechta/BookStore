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
        }.navigationTitle(book.title)
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group {
            NavigationView {
                BookDetailView(book: .harryPotter)
            }
            NavigationView {
                BookDetailView(book: .batman)
            }
            .preferredColorScheme(.dark)
        }
    }
}
