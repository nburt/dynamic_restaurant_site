require 'spec_helper'
require 'menu'

describe Menu do
  it "knows the items" do
    menu = Menu.new
    expect(menu.items).to match_array [
                            Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg"),
                            Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "/images/food2.jpg"),
                            Item.new("Saag Paneer", 5.95, "Yummy goodness", "/images/food3.jpg"),
                            Item.new("Alu Gobi", 5.95, "Yummy goodness", "/images/food4.jpg"),
                          ]
  end
end
