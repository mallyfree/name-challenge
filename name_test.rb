require 'minitest/autorun'

class Person
  attr_accessor :name
# def name
# @name
#def name=new_name
# @name =new_name
#end
  def initialize given_name
    self.name = given_name
  end
end

  def angry_name
    self.name.upcase + !!!
  end
end
binding.pry


class PersonTest < Minitest::Test
  def test_people_know_their_name
    tom = Person.new "Tom Crawford"
    assert_equal "Tom Crawford", tom.name
  end

  def test_people_can_be_angry
    su = Person.new "Su Kim"
    assert_equal "SU KIM!!!", su.angry_name
  end
end
