class ValueOption < ActiveRecord::Base
  attr_accessible :description, :point, :sub_clause_id
  
  validates_presence_of :point
  validates_uniqueness_of :point, :scope => [:sub_clause_id]
  
  belongs_to :sub_clause
  has_many :audits_values
end
