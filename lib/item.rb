class Item
  attr_reader :name, :description, :image, :date

  def initialize(name, price, description, image, date)
    @name = name
    @price = price.to_f
    @description = description
    @image = image
    @date = date
  end

  def == (other)
    self.name == other.name
    self.price == other.price
    self.description == other.description
    self.image == other.image
    self.date == other.date
  end

  def price(today = Date.today)
    if today.wednesday?
      @price = (@price * 0.9).round(2)
    else
      @price
    end
  end
end