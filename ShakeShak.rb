class Ingredient
  attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end
end

class MilkShake
  def initialize
    @base_price = 3
    @ingredients = [ ]    
  end

  def add_ingredient(ingredient)
    @ingredients.push(ingredient)
  end

  def price_of_milkshake
  total_price_of_milkshake = @base_price
  @ingredients.each do |ingredient|
    total_price_of_milkshake += ingredient.price
  end
   total_price_of_milkshake
end

class ShakeShop
  def initialize
    @milkshakes = [ ]    
  end

  def add_milkshakes(milkshake)
  	@milkshakes.push(milkshake)
  end 

  def ms_checkout
  	checkout = 0
    @milkshakes.each do |milkshake|
    	checkout += milkshake.price_of_milkshake
    end
    checkout	
  end
end

#milkshake list
ms_list = ShakeShop.new

#nizars
nizars_milkshake = MilkShake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)
ms_list.add_milkshakes(nizars_milkshake)
puts "Nizars Milkshake: #{nizars_milkshake.price_of_milkshake}"

#elephantpunch
elephantpunch_milkshake = MilkShake.new
proteins_powder = Ingredient.new("Protein/'s Powder", 4)
vanilla = Ingredient.new("Vanilla", 2)
elephantpunch_milkshake.add_ingredient(proteins_powder)
elephantpunch_milkshake.add_ingredient(vanilla)
ms_list.add_milkshakes(elephantpunch_milkshake)
puts "Elephant Punch Milkshake: #{elephantpunch_milkshake.price_of_milkshake}"

#rocky
rocky_milkshake = MilkShake.new
secret_stuff = Ingredient.new("Secret Stuff", 2)
raw_egg = Ingredient.new("Raw Egg", 1)
rocky_milkshake.add_ingredient(secret_stuff)
rocky_milkshake.add_ingredient(raw_egg)
ms_list.add_milkshakes(rocky_milkshake)
puts "Rocky Milkshake: #{rocky_milkshake.price_of_milkshake}"

#checkout
puts "Total: #{ms_list.ms_checkout}"

end