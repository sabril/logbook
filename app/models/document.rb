class Document < ActiveRecord::Base
  attr_accessible :document_group_id, :name, :pic_id, :progress, :status
  
  belongs_to :document_group
  belongs_to :pic, class_name: "AdminUser"
  
  has_many :assets, :as => :assetable
end
