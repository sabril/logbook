class AssetVersion < ActiveRecord::Base
  attr_accessible :asset_id, :description, :name, :uploader_id, :version_number, :asset_version_file
  belongs_to :asset
  belongs_to :uploader, :class_name => "AdminUser"
  
  mount_uploader :asset_version_file, AssetVersionUploader
  acts_as_list :scope => :asset
end
