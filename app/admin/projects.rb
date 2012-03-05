ActiveAdmin.register Project do
  controller.authorize_resource
  filter :name
  filter :description
  filter :start
  filter :finish
  filter :status, :as => :select, :collection => Project.status_collection
  
  #scope :new
  scope :active
  scope :pending
  scope :closed
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
  
  form :partial => "form"
  
  # form :name => "Project Info" do |f|
  #   f.inputs do
  #     f.input :name
  #     f.text_area :description, :class => "ckeditor"
  #     f.input :start, :as => :string, :input_html => { :class => "datepicker"}
  #     f.input :finish, :as => :string, :input_html => { :class => "datepicker"}
  #     f.input :leader, :collection => AdminUser.all.collect{|a| [a.email, a.id]}, :include_blank => false
  #     f.input :status, :as => :select, :collection => Project.status_collection, :include_blank => false
  #   end
  #   f.buttons
  # end
  
  controller do
    after_filter :add_updated_by, :only => [:create, :update]
    def add_updated_by
      @project.update_attributes(:admin_user => current_admin_user)
    end
  end
end
