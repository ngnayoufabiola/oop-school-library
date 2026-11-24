# frozen_string_literal: true

require_relative 'decorator'

# Trims a decorated name to ten characters.
class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name[0, 10]
  end
end
