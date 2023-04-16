class ImgUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  
  version :thumb do
    process :resize_to_fill => [400, 400]
  end
  
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end