require_relative 'decorator'

# Capitalizes the name returned by the decorated object.
class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
