class ValueOption < ActiveRecord::Base
  attr_accessible :description, :point, :sub_clause_id
  
  validates_presence_of :point
  validates_uniqueness_of :point, :scope => [:sub_clause_id]
  
  belongs_to :sub_clause
  has_many :audits_values, :dependent => :destroy
  
  scope :ordered, order("point ASC")
  scope :max_points, order("point DESC")
  
  def text
    "(#{point}) #{description}"
  end
end
