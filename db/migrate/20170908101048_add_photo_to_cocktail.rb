class AddPhotoToCocktail < ActiveRecord::Migration[5.0]
  def change
    add_column :cocktails, :cocktail_photo, :string
  end
end
