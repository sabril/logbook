class Project < ActiveRecord::Base
  belongs_to :admin_user
  belongs_to :leader, :class_name => "AdminUser"
  
  STATUS_ACTIVE = 'active'
  STATUS_PENDING = 'pending'
  STATUS_CLOSED = 'closed'
  STATUS_EXPIRED = 'expired'
  
  scope :active, where(:status => STATUS_ACTIVE)
  scope :pending, where(:status => STATUS_PENDING)
  scope :closed, where(:status => STATUS_CLOSED)
  scope :expired, where(:status => STATUS_EXPIRED)
  
  def status_tag
    case self.status
      when STATUS_EXPIRED then :bs_red
      when STATUS_PENDING then :bs_orange
      when STATUS_CLOSED then :bs_blue
      when STATUS_ACTIVE then :bs_green
      #when STATUS_CLOSED then :ok
      #when STATUS_INVALID then :bs_red
    end
  end
end
