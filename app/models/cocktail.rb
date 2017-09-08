class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true, allow_nil: false

  mount_uploader :cocktail_photo, CocktailPhotoUploader

end
