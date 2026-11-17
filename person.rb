class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end
class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def of_age?
    @age >= 18
  end
end
def can_use_services?
  of_age? || @parent_permission
end
class Person
  attr_accessor :name
  attr_reader :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || @parent_permission
  end
end