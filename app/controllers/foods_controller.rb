class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.all_food(params[:q])
  end
end 