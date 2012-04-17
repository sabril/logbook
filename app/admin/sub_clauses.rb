ActiveAdmin.register SubClause do
  menu :parent => "System Settings", :priority => 4
  controller.authorize_resource
  batch_action :destroy, false
  
  form partial: "form"
end
