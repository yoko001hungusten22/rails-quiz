class RenameCagtegoryIdColumnToCategoryId < ActiveRecord::Migration[7.0]
  def change
    rename_column :studies, :cagtegory_id, :category_id
  end
end
