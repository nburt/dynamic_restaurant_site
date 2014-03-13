class Item
  attr_reader :name, :price, :description, :image

  def initialize(name, price, description, image)
    @name = name
    @price = price
    @description = description
    @image = image
  end
end