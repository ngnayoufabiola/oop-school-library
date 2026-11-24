# frozen_string_literal: true

require_relative 'classroom'
require_relative 'student'
classroom = Classroom.new('Class A')
student = Student.new(18, nil, 'John')
classroom.add_student(student)
puts classroom.students.include?(student)
puts student.classroom.label
student2 = Student.new(20, classroom, 'Mary')
puts classroom.students.include?(student2)
puts student2.classroom.label
