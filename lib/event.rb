require_relative 'food_truck'
require_relative 'item'

class Event

  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end
end