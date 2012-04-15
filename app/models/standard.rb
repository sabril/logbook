class Standard < ActiveRecord::Base
  attr_accessible :ended_at, :name, :started_at
  has_many :clauses
end
