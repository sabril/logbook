class Clause < ActiveRecord::Base
  attr_accessible :number, :standard_id, :name
  belongs_to :standard
  has_many :sub_clauses, :dependent => :destroy
  
  validates_presence_of :number
  validates_uniqueness_of :number, :scope => [:standard_id]
  
  scope :ordered, order("number ASC")
end
