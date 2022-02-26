require 'faraday'
class FoodService
  class << self
    def connection
      Faraday.new(url: "https://api.nal.usda.gov") do |f|
        f.params['api_key'] = ENV["food_api_key"]
      end
    end 

    def all_food(query)
      response = connection.get("/fdc/v1/foods/search/?query=#{query}")
      food = JSON.parse(response.body, symbolize_names: true)
    end 
  end 
end 