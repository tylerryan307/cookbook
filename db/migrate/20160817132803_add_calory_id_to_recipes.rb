class AddCaloryIdToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :calory, index: true, foreign_key: true
  end
end
