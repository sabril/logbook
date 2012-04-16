class SubClause < ActiveRecord::Base
  attr_accessible :clause_id, :target, :description, :number
  belongs_to :clause
  has_many :value_options, :dependent => :destroy
  has_many :audits_values
  
  validates_presence_of :number
  validates_uniqueness_of :number, :scope => [:clause_id]
  
  def name
    clause.number + ' ' + number + '. ' + description
  end
  
  def max_point
    self.value_options.max_points.first.point
  end
  
  def get_value_option(point)
    self.value_options.where(point: point)[0]
  end
end
