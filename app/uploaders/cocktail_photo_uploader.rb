class CocktailPhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
