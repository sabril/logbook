ActiveAdmin.register Standard do
  #menu :parent => "System Settings", :priority => 2
  controller.authorize_resource
  filter :name
  batch_action :destroy, false
  
  show :title => :name do
    render "show"
  end
end
