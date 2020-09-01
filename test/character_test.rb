require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharaterTest <Minitest::Test

  def test_character_has_attibutes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal "KITT", kitt.name
    assert_equal "William Daniels", kitt.actor
    assert_equal 1_000_000, kitt.salary
  end

  
end
