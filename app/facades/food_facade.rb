class FoodFacade 
  def self.all_food(query)
    all_food = FoodService.all_food(query)
    all_food[:foods].map do |food|
      Food.new(food)
    end 
  end 
end 
