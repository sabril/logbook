class SubClause < ActiveRecord::Base
  attr_accessible :clause_id, :target, :description, :number, :value_options_attributes
  belongs_to :clause
  has_many :value_options, :dependent => :destroy
  has_many :audits_values
  
  accepts_nested_attributes_for :value_options, :reject_if => lambda { |a| a[:description].blank? }, :update_only => true, :allow_destroy => true
  
  validates_presence_of :number
  validates_uniqueness_of :number, :scope => [:clause_id]
  
  after_save :assign_to_audits
  
  def name
    clause.number + ' ' + number + '. ' + description
  end
  
  def max_point
    self.value_options.max_points.first.nil? ? 0 : self.value_options.max_points.first.point
  end
  
  def get_value_option(point)
    self.value_options.where(point: point)[0]
  end
  
  def current_audits_value(audit_id)
    self.audits_values.where(:audit_id => audit_id)[0]
  end
  
  protected
  
  def assign_to_audits
    self.clause.standard.audits.each do |audit|
      audit.sub_clause_ids << self.clause.standard.sub_clause_ids
      audit.sub_clause_ids.uniq
      audit.save
    end
  end
end
