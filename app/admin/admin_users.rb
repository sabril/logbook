ActiveAdmin.register AdminUser do
  controller.authorize_resource
  menu :parent => "System Settings", :priority => 1
  
  index do
    column :email do |user|
        link_to user.email, admin_admin_user_path(user)
    end
    column :name do |user|
        link_to user.name, admin_admin_user_path(user)
    end
    column :roles do |user|
      user.roles.map {|r| r.capitalize }.join(', ')
    end
    column :current_sign_in_at
  end
  
  form :partial => "admin_user_form"
  collection_action :new_password
  
  collection_action :update_password, :method => :put do
    admin_user = current_admin_user
    if admin_user.update_attributes(params[:admin_user])
      sign_in admin_user, :bypass => true
      redirect_to root_path, :notice => "Password updated"
    else
      render :action => "new_password"
    end
  end
end

ActiveAdmin.register_page "UpdateMyPassword" do
  menu :parent => "System Settings", :priority => 0, :label => "Update My Password"
  content do
    render  :partial => "admin/admin_users/new_password"
  end  
end