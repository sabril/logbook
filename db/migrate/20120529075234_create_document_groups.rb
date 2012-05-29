class CreateDocumentGroups < ActiveRecord::Migration
  def change
    create_table :document_groups do |t|
      t.string :name
      t.string :status
      t.float :progress
      t.integer :pic_id

      t.timestamps
    end
  end
end
