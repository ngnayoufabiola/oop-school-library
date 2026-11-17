require_relative 'person'
require_relative 'student'
require_relative 'teacher'

person = Person.new(25, "John")
student = Student.new(16, "Mary")
teacher = Teacher.new(30, "James", "Ruby")

puts person.correct_name
puts student.correct_name
puts teacher.correct_name

puts student.play_hooky
puts teacher.can_use_services?