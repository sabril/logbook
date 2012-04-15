class SubClause < ActiveRecord::Base
  attr_accessible :clause_id, :description, :number
  belongs_to :clause
end
