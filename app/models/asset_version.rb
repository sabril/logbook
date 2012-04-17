class AssetVersion < ActiveRecord::Base
  attr_accessible :asset_id, :description, :name, :owner_id, :version_number, :asset_version_file
  belongs_to :asset
  belongs_to :owner, :class => "AdminUser"
  # 
  # mount_uploader :asset_version_file, AssetVersionUploader
  
end
