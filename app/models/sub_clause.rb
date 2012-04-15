class SubClause < ActiveRecord::Base
  attr_accessible :clause_id, :target, :description, :number
  belongs_to :clause
end
