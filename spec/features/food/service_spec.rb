require 'rails_helper'

RSpec.describe "Food Service" do 
  it 'returns food based on a search' do 
    foods = FoodService.all_food('sweet potatoes')

    expect(foods[:totalHits]).to be(48008)
  end 
end 