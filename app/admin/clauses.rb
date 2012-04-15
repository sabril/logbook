ActiveAdmin.register Clause do
  menu :parent => "System Settings", :priority => 3
  controller.authorize_resource
  batch_action :destroy, false
end
