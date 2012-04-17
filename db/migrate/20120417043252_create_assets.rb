class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :owner_id
      t.integer :assetable_id
      t.string :assetable_type
      t.integer :updated_by_id

      t.timestamps
    end
  end
end
