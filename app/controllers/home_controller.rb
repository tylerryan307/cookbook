class HomeController < ApplicationController
  def index
    @number_of_recipes = Recipe.count
  end

  def about
  end
  
  def contact
    @phone = "1.800.EAT.FOOD"
  end
end
