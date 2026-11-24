require_relative 'nameable'
# Represents a person who can rent books.
class Person < Nameable
  attr_reader :id, :age, :rentals
  attr_accessor :name

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
