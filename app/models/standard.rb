class Standard < ActiveRecord::Base
  attr_accessible :ended_at, :name, :started_at
  has_many :clauses
  has_many :sub_clauses, :through => :clauses
  has_many :value_options, :through => :sub_clauses
  
  accepts_nested_attributes_for :clauses, :allow_destroy => true
  
end
