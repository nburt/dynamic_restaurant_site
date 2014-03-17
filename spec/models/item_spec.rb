require 'spec_helper'
require 'item'

describe Item do
  it "has a name" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg", "monday")

    expect(item.name).to eq "Channa Masala"
  end
  it "has a price" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg", "monday")

    expect(item.price).to eq 5.95
  end
  it "has a description" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg", "monday")

    expect(item.description).to eq "Yummy goodness"
  end
  it "has an image" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg", "monday")

    expect(item.image).to eq "/images/food1.jpg"
  end

  it "knows that items are the same if they have the same attributes" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg", "monday")

    item1 = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg", "monday")
    item2 = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg", "monday")

    expect(item1).to eq item2
  end

  it "knows that it should give a discount for menu items if it is a Wednesday" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg", "monday")

    expect(item.price(Date.new(2014,03,12))).to eq 5.36
  end
end