class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :document_group_id
      t.string :name
      t.string :number
      t.string :location
      t.string :status
      t.float :progress, :default => 0.00
      t.integer :pic_id
      t.date :start_retention
      t.date :end_retention
      t.timestamps
    end
  end
end
