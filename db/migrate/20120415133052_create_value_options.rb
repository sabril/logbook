class CreateValueOptions < ActiveRecord::Migration
  def change
    create_table :value_options do |t|
      t.integer :sub_clause_id
      t.string :description
      t.integer :point, :default => 0

      t.timestamps
    end
  end
end
