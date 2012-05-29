class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :document_group_id
      t.string :name
      t.string :status
      t.float :progress
      t.integer :pic_id

      t.timestamps
    end
  end
end
