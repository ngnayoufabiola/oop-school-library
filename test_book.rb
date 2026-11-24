require_relative 'book'
book = Book.new('The Hobbit', 'J.R.R. Tolkien')
puts book.title
puts book.author
book.title = 'Harry Potter'
book.author = 'J.K. Rowling'
puts book.title
puts book.author
