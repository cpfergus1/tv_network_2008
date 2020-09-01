class Character

attr_reader :name, :actor, :salary

  def initialize(character)
    character.each do |key, val|
      instance_variable_set("@#{key}",val) unless val.nil?
    end
  end

end
