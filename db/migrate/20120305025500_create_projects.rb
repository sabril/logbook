class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :status, :default => "active"
      t.date :start
      t.date :finish
      t.integer :admin_user_id
      t.integer :leader_id
      t.timestamps
    end
  end
end
