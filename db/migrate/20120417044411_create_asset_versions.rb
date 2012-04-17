class CreateAssetVersions < ActiveRecord::Migration
  def change
    create_table :asset_versions do |t|
      t.string :name
      t.text :description
      t.integer :asset_id
      t.integer :owner_id
      t.integer :version_number

      t.timestamps
    end
  end
end
