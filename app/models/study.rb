class Study < ApplicationRecord
  belongs_to :category
  belongs_to :user
  mount_uploader :img, ImgUploader
end
