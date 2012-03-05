class Project < ActiveRecord::Base
  belongs_to :admin_user
  belongs_to :leader, :class_name => "AdminUser"
end
