require_relative 'item'

class FoodTruck

  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    @inventory[item].to_i
  end

  def stock(item, amount)
    if !@inventory.keys.include?(item)
      @inventory[item] = amount
    else
      @inventory[item] += amount
    end
  end

  def potential_revenue
    @inventory.sum do |item|
      (item[0].price.delete("$").to_f * item[1])
    end
  end

end
