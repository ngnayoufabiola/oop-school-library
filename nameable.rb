# frozen_string_literal: true

# Defines the interface for objects that provide a name.
class Nameable
  def correct_name
    raise NotImplementedError
  end
end
