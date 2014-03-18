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
      split_array = row["date"].split(",")
      split_array.each do |day|
        if day_of_week.downcase == day
          array_of_items.push(Item.new(row["name"], row["price"], row["description"], row["image"], row["date"]))
        end
      end
    end
    array_of_items
  end
end