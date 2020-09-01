require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
class ShowTest <Minitest::Test

  def test_show_has_attributes
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    assert_equal 'Knight Rider', knight_rider.name
    assert_equal 'Glen Larson', knight_rider.creator
    assert_equal [michael_knight, kitt], knight_rider.characters
    assert_equal 2_600_000, knight_rider.total_salary
    assert_equal 'David Hasselhoff', knight_rider.highest_paid_actor
    assert_equal ['David Hasselhoff', 'William Daniels'], knight_rider.actors
  end
end
