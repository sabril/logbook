class AssetVersion < ActiveRecord::Base
  attr_accessible :asset_id, :description, :name, :owner_id, :version_number, :attachment
  belongs_to :asset
  belongs_to :owner, :class => "AdminUser"
  
  mount_uploader :attachment, AssetVersionUploader
  
end
