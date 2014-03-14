require 'item'

class Menu
  def items
    [
      Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg"),
      Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "/images/food2.jpg"),
      Item.new("Saag Paneer", 5.95, "Yummy goodness", "/images/food3.jpg"),
      Item.new("Alu Gobi", 5.95, "Yummy goodness", "/images/food4.jpg"),
    ]
  end
end