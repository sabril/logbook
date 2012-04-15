class CreateClauses < ActiveRecord::Migration
  def change
    create_table :clauses do |t|
      t.integer :standard_id
      t.string :number

      t.timestamps
    end
  end
end
