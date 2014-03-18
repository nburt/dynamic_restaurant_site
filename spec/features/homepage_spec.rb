require 'spec_helper'
require 'featured_paragraph'

describe 'Visiting the home page' do
  
  it "displays all of the menu items" do
    visit "/"
    expect(page).to have_content("Alu Gobi")
  end

  it "automatically changes copyright year to current year" do
    visit "/"

    within("footer") do
      expect(page).to have_content("2014")
    end
  end

  it "should have the featured paragraph at the top" do
    visit "/"

    within("main") do
      expect(page).to have_content("in this present matter of his leg")
    end
  end
end