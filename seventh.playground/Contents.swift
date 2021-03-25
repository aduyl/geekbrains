import UIKit

struct Book {
    var isAvailable: Bool
    var name: String
    var author: String
}

enum LiblaryError: Error{
    case invalidBook, outOfStok, tooMuchBookIsTaken //нет такой книги, книга недоступна, слишком много книг на руках
}

class Library {
    var books = [
        "War and peace": Book(isAvailable: true, name: "War and peace", author: "L.Tolstoy"),
        "Logic": Book(isAvailable: true, name: "Logic", author: "G. Hegel"),
        "The master and Margarita": Book(isAvailable: false, name: "The master and Margarita", author: "M. Bulgakov")
    ]
    var booksTaken = 0
    
    func borrow(bookNamed name: String) throws -> Book {
        guard let book = books[name] else {
            throw LiblaryError.invalidBook
        }
        
        guard book.isAvailable == true else {
            throw LiblaryError.outOfStok
        }
        guard booksTaken < 10 else {
            throw LiblaryError.tooMuchBookIsTaken
        }
        
        var newBook = book
        newBook.isAvailable = false
        booksTaken += 1
        return book
    }
    
}

let library = Library()

do {
    let borr = try library.borrow(bookNamed: "The master and Margarita")
} catch LiblaryError.invalidBook{
    print("there no such book")
} catch LiblaryError.outOfStok{
    print("there are no more books")
} catch LiblaryError.tooMuchBookIsTaken{
    print("Too many books taken")
}


