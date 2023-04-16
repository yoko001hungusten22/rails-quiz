class AddImgToStudies < ActiveRecord::Migration[7.0]
  def change
    add_column :studies, :img, :string
  end
end
