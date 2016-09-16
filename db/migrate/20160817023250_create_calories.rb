class CreateCalories < ActiveRecord::Migration
  def change
    create_table :calories do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
