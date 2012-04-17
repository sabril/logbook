class AddNameToClauses < ActiveRecord::Migration
  def change
    add_column :clauses, :name, :string
  end
end
