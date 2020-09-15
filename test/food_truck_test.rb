require 'minitest/autorun'
require 'minitest/pride'
require './lib/food_truck'
require './lib/item'

class FoodTruck <Minitest::Test


  def setup
    food_truck = FoodTruck.new("Rocky Mountain Pies")
  end

  def test_truck_has_attributes
    food_truck.name
    food_truck.inventory
  end
  
  def test_can_stock_items
    food_truck.check_stock(item1)
    food_truck.stock(item1, 30)
    food_truck.inventory
    food_truck.check_stock(item1)
    food_truck.stock(item1, 25)
    food_truck.check_stock(item1)
    food_truck.stock(item2, 12)
    food_truck.inventory
  end
end
