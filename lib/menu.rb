require 'item'
require 'csv'

class Menu
  def initialize(file_to_import)
    @file = CSV.read(file_to_import, headers: true)
  end

  def items
    array_of_items = []
    @file.each do |row|
      array_of_items.push(Item.new(row["name"], row["price"], row["description"], row["image"]))
    end
    array_of_items
  end
end