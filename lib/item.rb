class Item
  attr_reader :name, :description, :image

  def initialize(name, price, description, image)
    @name = name
    @price = price.to_f
    @description = description
    @image = image
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.image == other.image
  end

  def price(today = Date.today)
    if today.wednesday?
      @price = (@price * 0.9).round(2)
    else
      @price
    end
  end
end