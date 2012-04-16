ActiveAdmin.register Audit do
  controller.authorize_resource
  filter :name
  batch_action :destroy, false
  
  show :title => :title do
    render "show"
  end
  
  form do |f|
    f.inputs "Audit" do
      f.input :name
      f.input :standard, :include_blank => false
      f.input :started_at, as: "string", :input_html => {class: "datepicker"}
      f.input :ended_at, as: "string", :input_html => {class: "datepicker"}
    end
    f.buttons
  end
end