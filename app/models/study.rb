class Study < ApplicationRecord
  belongs_to :category
  mount_uploader :img, ImgUploader
end
