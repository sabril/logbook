ActiveAdmin.register Standard do
  controller.authorize_resource
  filter :name
  batch_action :destroy, false
end
