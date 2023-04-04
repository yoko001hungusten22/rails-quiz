class AddCategoryIdToStudies < ActiveRecord::Migration[7.0]
  def change
    add_column :studies, :cagtegory_id, :integer
  end
end
