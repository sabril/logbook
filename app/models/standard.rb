class Standard < ActiveRecord::Base
  attr_accessible :ended_at, :name, :started_at
  has_many :clauses, :dependent => :destroy
  has_many :sub_clauses, :through => :clauses
  has_many :value_options, :through => :sub_clauses
  has_many :audits
  
  accepts_nested_attributes_for :clauses, :allow_destroy => true
  
  def self.recent(request_count)
    Standard.order('created_at desc').limit(request_count).all
  end
  
  def max_points
    self.sub_clauses.map {|sc| sc.max_point }.inject {|sum, max| sum + max}
  end
end
