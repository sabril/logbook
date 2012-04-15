class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
      t.string :name
      t.date :started_at
      t.date :ended_at

      t.timestamps
    end
  end
end
