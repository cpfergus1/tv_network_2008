require './lib/character'
require './lib/show'


class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows =[]
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    main = @shows.map do |show|
            show.characters.map do |character|
                if (character.name == character.name.upcase) && character.salary > 500_000
                  character
                end
              end
            end.flatten.reject {|ind| ind.nil?}
  end

end
