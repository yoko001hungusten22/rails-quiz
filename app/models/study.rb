class Study < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :study_results, dependent: :destroy
  mount_uploader :img, ImgUploader
end
