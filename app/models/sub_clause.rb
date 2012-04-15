class SubClause < ActiveRecord::Base
  attr_accessible :clause_id, :target, :description, :number
  belongs_to :clause
  has_many :value_options
  
  validates_presence_of :number
  validates_uniqueness_of :number, :scope => [:clause_id]
  
  def name
    number + '. ' + description
  end
end
