class Asset < ActiveRecord::Base
  attr_accessible :owner_id, :assetable_id, :assetable_type, :name, :updated_by_id, :asset_versions_attributes
  
  belongs_to :assetable, :polymorphic => true
  belongs_to :owner, :class_name => "AdminUser"
  belongs_to :updated_by, :class_name => "AdminUser"
  
  has_many :asset_versions, :order => "position Desc", :dependent => :destroy
  
  accepts_nested_attributes_for :asset_versions#, :reject_if => lambda { |a| a[:asset_version_file].blank? }, :update_only => true, :allow_destroy => true

  def current_version
    self.asset_versions.first
  end
end
