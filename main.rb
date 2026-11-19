require_relative 'person'
require_relative 'student'
require_relative 'teacher'

person = Person.new(20, 'Alice')
student = Student.new(16, 'Class A', 'David')
teacher = Teacher.new(35, 'Mathematics', 'John')

puts person.can_use_services?
puts student.play_hooky
puts student.classroom
puts teacher.specialization
puts teacher.can_use_services?