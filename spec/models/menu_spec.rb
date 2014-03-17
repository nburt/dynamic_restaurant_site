require 'spec_helper'
require 'menu'

describe Menu do
  it "processes a csv and populates the menu with the items from the file" do
    menu = Menu.new(File.open("../dynamic_restaurant_site/config/menu.csv"))
    expect(menu.items).to match_array [
                                        Item.new("Channa Masala", 5.95, "Yummy goodness", "food1.jpg", "monday"),
                                        Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "food2.jpg", "monday"),
                                        Item.new("Saag Paneer", 5.95, "Yummy goodness", "food3.jpg", "monday"),
                                      ]
  end

  it "only populates the menu with the items from that day of the week" do
    menu = Menu.new(File.expand_path('../dynamic_restaurant_site/config/menu.csv'))
    monday = Date.new(2014, 3, 17)
    expect(menu.items(monday.strftime("%A"))).to match_array [Item.new("Channa Masala", 5.95, "Yummy goodness", "food1.jpg", "monday"),
                                                              Item.new("Chicken Tikka Masala", 5.95, "Yummy goodness", "food2.jpg", "monday"),
                                                              Item.new("Saag Paneer", 5.95, "Yummy goodness", "food3.jpg", "monday"),]
  end
end
