class DocumentGroup < ActiveRecord::Base
  attr_accessible :name, :pic_id, :progress, :status
  
  belongs_to :pic, class_name: "AdminUser"
  
  has_many :documents
end
