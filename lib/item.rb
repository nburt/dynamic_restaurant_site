class Item
  attr_reader :name, :price, :description, :image

  def initialize(name, price, description, image)
    @name = name
    @price = price
    @description = description
    @image = image
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.image == other.image
  end
end