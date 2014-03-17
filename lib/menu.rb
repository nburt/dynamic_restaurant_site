require 'item'
require 'csv'
require 'date'

class Menu
  attr_reader :day_of_week
  def initialize(file_to_import)
    @file = CSV.read(file_to_import, headers: true)
  end

  def items(day_of_week = Date.today.strftime("%A"))
    array_of_items = []
    @file.each do |row|
      if day_of_week.downcase == row["date"]
        array_of_items.push(Item.new(row["name"], row["price"], row["description"], row["image"], row["date"]))
      end
    end
    array_of_items
  end
end