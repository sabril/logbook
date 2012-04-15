class CreateSubClauses < ActiveRecord::Migration
  def change
    create_table :sub_clauses do |t|
      t.integer :clause_id
      t.string :number
      t.string :target
      t.text :description
      t.timestamps
    end
  end
end
