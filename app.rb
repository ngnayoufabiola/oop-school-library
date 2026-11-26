
require_relative 'book'
require_relative 'person'
require_relative 'student'
require_relative 'teacher'
require_relative 'rental'
require_relative 'classroom'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_books
    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end
  end

  def list_people
    @people.each do |person|
      puts "[#{person.class}] Name: #{person.name}, ID: #{person.id}, Age: #{person.age}"
    end
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)?'
    choice = gets.chomp

    print 'Age: '
    age = gets.chomp.to_i

    print 'Name: '
    name = gets.chomp

    if choice == '1'
      classroom = Classroom.new('Default Classroom')
      person = Student.new(age, classroom, name)
    elsif choice == '2'
      print 'Specialization: '
      specialization = gets.chomp
      person = Teacher.new(age, specialization, name)
    else
      puts 'Invalid choice!'
      return
    end

    @people << person
    puts "#{person.class} created successfully!"
  end

  def create_book
    print 'Title: '
    title = gets.chomp

    print 'Author: '
    author = gets.chomp

    book = Book.new(title, author)
    @books << book

    puts 'Book created successfully!'
  end

  def create_rental
    puts 'Select a book from the following list by number:'
    @books.each_with_index do |book, index|
      puts "#{index}) Title: \"#{book.title}\", Author: #{book.author}"
    end

    book_index = gets.chomp.to_i

    puts 'Select a person from the following list by number:'
    @people.each_with_index do |person, index|
      puts "#{index}) [#{person.class}] Name: #{person.name}, ID: #{person.id}"
    end

    person_index = gets.chomp.to_i

    print 'Date (YYYY-MM-DD): '
    date = gets.chomp

    if @books[book_index] && @people[person_index]
      rental = Rental.new(date, @books[book_index], @people[person_index])
      @rentals << rental
      puts 'Rental created successfully!'
    else
      puts 'Invalid book or person selection!'
    end
  end

  def list_rentals
    print 'Enter person ID: '
    person_id = gets.chomp.to_i

    person = @people.find { |p| p.id == person_id }

    if person
      puts 'Rentals:'
      person.rentals.each do |rental|
        puts "Date: #{rental.date}, Book: #{rental.book.title} by #{rental.book.author}"
      end
    else
      puts 'Person not found!'
    end
  end
end
