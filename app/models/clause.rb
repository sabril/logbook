class Clause < ActiveRecord::Base
  attr_accessible :number, :standard_id
  belongs_to :standard
  has_many :sub_clauses
  
  def name
    self.standard.name + ' - ' + self.number
  end
end
