ActiveAdmin.register Audit do
  controller.authorize_resource
  filter :name
  batch_action :destroy, false
  
  index do
    column :name do |audit|
      link_to audit.name, admin_audit_path(audit)
    end
    column :leader do |audit|
      audit.leader.name
    end
    column :started_at
    column :ended_at
    default_actions
  end
  
  show :title => :title do
    div do
      render "show"
    end
    div :class => "container-fluid" do
      active_admin_comments
    end
  end
  
  form do |f|
    f.inputs "Audit" do
      f.input :name
      f.input :standard, :include_blank => false
      f.input :leader, :include_blank => false
      f.input :started_at, as: "string", :input_html => {class: "datepicker"}
      f.input :ended_at, as: "string", :input_html => {class: "datepicker"}
    end
    f.buttons
  end
end