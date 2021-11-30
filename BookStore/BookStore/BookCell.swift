//
//  BookCell.swift
//  BookStore
//
//  Created by Mickael Mas on 30/11/2021.
//

import SwiftUI

struct BookCell: View {
    let book: Book
    
    var body: some View {
        HStack {
            if book.image == nil {
                RoundedRectangle(cornerRadius: 5)
                    .frame(width: 100, height: 150)
                    .foregroundColor(.gray)
            } else {
                book.image!
                .resizable()
                .scaledToFit()
                
            }
            
            VStack(alignment: .leading) {
                Text(book.title)
                    .font(.title3)
                    .bold()
                Text(book.category.rawValue)
                    .foregroundColor(.blue)
            }
        }
    }
}

struct BookCell_Previews: PreviewProvider {
    static var previews: some View {
        BookCell(book: .harryPotter)
            .previewLayout(.sizeThatFits)
    }
}
