ActiveAdmin.register Clause do
  menu :parent => "System Settings", :priority => 3
  controller.authorize_resource
  batch_action :destroy, false
  
  index do
    column :id
    column :number
    column :name
    default_actions
  end
end
