# frozen_string_literal: true

# Documentacion de School
class School
  attr_reader :name, :students

  def initialize(name)
    @name = name
    @students = []
  end
end
