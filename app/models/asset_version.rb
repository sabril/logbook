class AssetVersion < ActiveRecord::Base
  include Rails.application.routes.url_helpers
  attr_accessible :asset_id, :description, :name, :uploader_id, :version_number, :asset_version_file
  belongs_to :asset
  belongs_to :uploader, :class_name => "AdminUser"
  
  mount_uploader :asset_version_file, AssetVersionUploader
  acts_as_list :scope => :asset
  
  def to_jq_upload
    {
      "name" => read_attribute(:avatar),
      "size" => avatar.size,
      "url" => avatar.url,
      "delete_url" => asset_versions_path(:id => id),
      "delete_type" => "DELETE" 
    }
  end
end
