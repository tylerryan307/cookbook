class Recipe < ActiveRecord::Base
belongs_to :category    
validates :title, :ingredients, :instructions, presence: true


  def self.find_all_by_query(query)
    query = query.downcase
    query = "%#{query}%"
 
    Recipe.where(['lower(title) like ?
                   OR lower(ingredients) like ?
                   OR lower(instructions) like ?',
                   query, query, query])
  end
end