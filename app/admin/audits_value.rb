ActiveAdmin.register AuditsValue do
  menu :parent => "System Settings", :priority => 2
  controller.authorize_resource
  batch_action :destroy, false
  
  form :partial => "form"
end