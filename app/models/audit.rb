class Audit < ActiveRecord::Base
  attr_accessible :ended_at, :leader_id, :name, :points, :standard_id, :started_at
  belongs_to :standard
  belongs_to :leader, :class_name => "AdminUser"
  has_many :audits_values
end
