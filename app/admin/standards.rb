ActiveAdmin.register Standard do
  #menu :parent => "System Settings", :priority => 2
  controller.authorize_resource
  filter :name
  batch_action :destroy, false
  
  show :title => :name do
    div do
      render "show"
    end
    div :class => "container-fluid" do
      active_admin_comments
    end
  end
end
