class Asset < ActiveRecord::Base
  attr_accessible :owner_id, :assetable_id, :assetable_type, :name, :updated_by_id
  
  belongs_to :assetable, :polymorphic => true
  belongs_to :owner, :class_name => "AdminUser"
  belongs_to :updated_by, :class_name => "AdminUser"
  
  #has_many :asset_versions
end
