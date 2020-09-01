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

  def highest_paid_actor
    @characters.sort_by {|ind| -ind.salary}.first.actor
  end

  def actors
    @characters.map {|ind| ind.actor}
  end
end
