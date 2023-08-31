class CreateStudyResults < ActiveRecord::Migration[7.0]
  def change
    create_table :study_results do |t|
      t.references :user, null: false, foreign_key: true
      t.references :study, null: false, foreign_key: true
      t.boolean :understood

      t.timestamps
    end
  end
end
