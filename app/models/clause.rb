class Clause < ActiveRecord::Base
  attr_accessible :number, :standard_id
  belongs_to :standard
  has_many :sub_clauses
  
  validates_presence_of :number
  validates_uniqueness_of :number, :scope => [:standard_id]
  
  def name
    self.standard.name + ' - ' + self.number
  end
end
