ActiveAdmin.register Project do
  controller.authorize_resource
  filter :name
  filter :description
  filter :start
  filter :finish
  
  form :name => "Project Info" do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :start
      f.input :finish
      f.input :leader, :collection => AdminUser.all.collect{|a| [a.email, a.id]}, :include_blank => false
    end
    f.buttons
  end
end
