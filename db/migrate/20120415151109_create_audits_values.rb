class CreateAuditsValues < ActiveRecord::Migration
  def change
    create_table :audits_values do |t|
      t.integer :audit_id
      t.integer :value_option_id

      t.timestamps
    end
  end
end
