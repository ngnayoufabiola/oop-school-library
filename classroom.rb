# frozen_string_literal: true

# Represents a classroom and its students.
class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students.push(student) unless @students.include?(student)
    student.classroom = self unless student.classroom == self
  end
end
