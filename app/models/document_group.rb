class DocumentGroup < ActiveRecord::Base
  attr_accessible :name, :pic_id, :progress, :status
  
  belongs_to :pic, class_name: "AdminUser"
  
  has_many :documents, :dependent => :destroy
  
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
      when STATUS_ACTIVE then :bs_green
      when STATUS_CLOSED then :ok
    end
  end
  
  class << self
    def status_collection
      {
        "Active" => STATUS_ACTIVE,
        "Pending" => STATUS_PENDING,
        "Closed" => STATUS_CLOSED,
        "Expired" => STATUS_EXPIRED
      }
    end
  end
end
