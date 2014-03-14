require 'spec_helper'
require 'item'

describe Item do
  it "has a name" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg")

    expect(item.name).to eq "Channa Masala"
  end
  it "has a price" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg")

    expect(item.price).to eq 5.95
  end
  it "has a description" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg")

    expect(item.description).to eq "Yummy goodness"
  end
  it "has an image" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg")

    expect(item.image).to eq "/images/food1.jpg"
  end

  it "knows that items are the same if they have the same attributes" do
    item = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg")

    item1 = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg")
    item2 = Item.new("Channa Masala", 5.95, "Yummy goodness", "/images/food1.jpg")

    expect(item1).to eq item2
  end
end