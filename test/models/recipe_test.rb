require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "should find a match on title" do
    test_recipe = Recipe.create(title: "Cake",
    ingredients: "Flour, sugar, eggs.",
    instructions: "Mix ingredients...")
    assert_equal test_recipe, Recipe.find_all_by_query("cake").first
  end
  
  test "should find 2 matches on title" do
    Recipe.create!(title: "Cake",
    ingredients: "Flour, sugar, eggs.",
    instructions: "Mix ingredients...")
    Recipe.create!(title: "Pancakes",
    ingredients: "flour, butter, eggs.",
    instructions: "Mix ingredients in a large bowl...")
    assert_equal 2, Recipe.find_all_by_query("cake").count
  end
  
  test "should find a match on ingredients" do
    test_recipe = Recipe.create(title: "Cake",
    ingredients: "Flour, sugar, eggs.",
    instructions: "Mix ingredients...")
    assert_equal test_recipe, Recipe.find_all_by_query("flour").first
  end
end