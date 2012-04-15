class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.integer :standard_id
      t.date :started_at
      t.date :ended_at
      t.string :name
      t.integer :points
      t.integer :leader_id

      t.timestamps
    end
  end
end
