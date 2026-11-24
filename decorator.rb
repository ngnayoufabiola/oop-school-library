# frozen_string_literal: true

require_relative 'nameable'
# Provides a base decorator for nameable objects.
class Decorator < Nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
