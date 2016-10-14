class ShoppingCart
  def initialize
    @items = []
  end
  def add_item(item)
  	  @items.push(item)
  end
  def sc_checkout
  	  checkout = 0
  	  @items.each do |item|
  	  checkout += item.price
  	  end
  	  if @items.count > 5 
  	  	checkout -= (checkout * 0.1)
  	  end
  	  time = Time.now
  	  puts "Your total today is #{checkout}€. Have a nice #{time.strftime("%A")}!"
  end                                                     #ouh yeah baby!! i got it
end

class Item 
  def initialize(name, price)
      @name = name
      @price = price
  end
  def price
  	  @price
  end
end

class Houseware < Item
  def price
      if @price > 100
      	 @price -= (@price * 0.05)
      else @price
      end
  end
end

class Fruit < Item
  def price
  	time = Time.now
  	  if time.saturday? || time.sunday?
      	@price -= (@price * 0.1)
      else @price
      end
  end
end



#items
banana = Fruit.new("Banana", 10)
orange_juice = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum_cleaner = Houseware.new("Vacuum Cleaner", 150)
anchovy = Item.new("Anchovy", 2)


#Josh's Cart MOD
joshs_cart = ShoppingCart.new

joshs_cart.add_item(orange_juice)
joshs_cart.add_item(rice)
joshs_cart.add_item(banana)
joshs_cart.add_item(banana)
joshs_cart.add_item(vacuum_cleaner)
joshs_cart.add_item(anchovy)
joshs_cart.sc_checkout

