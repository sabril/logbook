class Audit < ActiveRecord::Base
  attr_accessible :ended_at, :leader_id, :name, :points, :standard_id, :started_at
  
  validates_presence_of :leader_id
  
  belongs_to :standard
  belongs_to :leader, :class_name => "AdminUser"
  has_many :audits_values, :dependent => :destroy
  has_many :sub_clauses, :through => :audits_values
  
  has_many :value_options, :through => :audits_values
  
  after_create :add_audits_values
  #after_update :add_audits_values
  
  def points
    self.value_options.sum(:point)
  end
  
  def title
    "#{name} (#{points}/#{standard.max_points})"
  end
  
  def self.recent(request_count)
    Audit.order('created_at desc').limit(request_count).all
  end
  
  protected
  
  def add_audits_values
    self.sub_clauses = self.standard.sub_clauses
    self.save
  end
  
  
end
