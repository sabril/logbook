class CreateAssetVersions < ActiveRecord::Migration
  def change
    create_table :asset_versions do |t|
      t.string :name
      t.text :description
      t.integer :asset_id
      t.integer :uploader_id
      t.integer :version_number
      t.string :asset_version_file
      t.timestamps
    end
  end
end
