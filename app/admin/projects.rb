ActiveAdmin.register Project do
  controller.authorize_resource
  filter :name
  filter :description
  filter :start
  filter :finish
  filter :status
  
  scope :active
  scope :closed
  scope :pending
  scope :expired
  
  index do
    column :name, :sortable => :name do |project|
      link_to project.name, admin_project_path(project)
    end
    column "Status" do |project|
      status_tag project.status, project.status_tag
    end

    default_actions
  end
  
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
  
  controller do
    after_filter :add_updated_by, :only => [:create, :update]
    def add_updated_by
      @project.update_attributes(:admin_user => current_admin_user)
    end
  end
end
