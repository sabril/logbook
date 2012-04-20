ActiveAdmin.register ValueOption do
  menu :parent => "System Settings", :priority => 5
  controller.authorize_resource

end
