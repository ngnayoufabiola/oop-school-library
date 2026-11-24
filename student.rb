# frozen_string_literal: true

require_relative 'person'

# Represents a student in a classroom.
class Student < Person
  attr_reader :classroom

  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    self.classroom = classroom
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.add_student(self) unless classroom.nil? || classroom.students.include?(self)
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
