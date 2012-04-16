class AuditsValue < ActiveRecord::Base
  attr_accessible :audit_id, :value_option_id, :sub_clause_id
  belongs_to :audit
  belongs_to :value_option
  belongs_to :sub_clause
  
  after_create :assign_value_option

  protected
  def assign_value_option
    self.value_option_id = self.sub_clause.value_options.ordered.first[:id]
    self.save
  end
  
  
end
