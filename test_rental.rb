require_relative 'book'
require_relative 'person'
require_relative 'rental'
book = Book.new('The Hobbit', 'J.R.R. Tolkien')
person = Person.new(25, 'John')
rental = Rental.new('2026-11-24', book, person)
puts rental.date
puts rental.book.title
puts rental.person.name
puts book.rentals.include?(rental)
puts person.rentals.include?(rental)
book2 = Book.new('Harry Potter', 'J.K. Rowling')
Rental.new('2026-11-25', book2, person)
person2 = Person.new(30, 'Mary')
Rental.new('2026-11-26', book, person2)
puts person.rentals.length
puts book.rentals.length
puts book2.rentals.length
