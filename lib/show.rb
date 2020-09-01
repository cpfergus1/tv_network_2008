require './lib/character'

class Show

  attr_reader :name, :creator,:characters

  def initialize(name,creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    @characters.sum {|ind| ind.salary}
  end
end
