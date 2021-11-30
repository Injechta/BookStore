//
//  AddBookView.swift
//  BookStore
//
//  Created by Mickael Mas on 30/11/2021.
//

import SwiftUI

struct AddBookView: View {
    
    @Binding var books: [Book]
    @Binding var isAddPresented: Bool
    
    @State private var title: String = ""
    @State private var description: String = ""
    @State private var author: String = ""
    @State private var pagesNumber: String = ""
    @State private var category: BookCategory = .fiction
    
    var body: some View {
        
        VStack {
            TextView(title: $title, text: "Titre")
            
            TextView(title: $description, text: "Description")
            
            TextView(title: $author, text: "Author")
            
            TextView(title: $pagesNumber, text: "Pages", keyboardType: .numberPad)
            
            
            Picker(selection: $category) {
                ForEach(BookCategory.allCases, id: \.self) { // KeyPath
                    category in
                    Text(category.rawValue)
                }
            } label: {
                Text("Catégories")
            }.pickerStyle(.wheel)
            
            
            Button {
                books.append(Book(title: title, author: author, description: description, pagesNumber: Int(pagesNumber) ?? 0, category: category))
                isAddPresented.toggle()
            } label: {
                Text("Ajouter")
                    .padding()
                    .frame(width: 300)
                    .foregroundColor(.white)
                    .background(RoundedRectangle(cornerRadius: 20))
            }
        }
    }
}

struct AddBookView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookView(books: .constant(Book.books), isAddPresented: .constant(false))
    }
}

struct TextView: View {
    
    @Binding var title: String
    
    let text: String
    var keyboardType: UIKeyboardType = .default
    var body: some View {
        TextField(text: $title) {
            Text(text)
        }
        .padding()
        .textFieldStyle(.roundedBorder)
        .keyboardType(keyboardType)
    }
}
