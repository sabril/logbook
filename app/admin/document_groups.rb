ActiveAdmin.register DocumentGroup do
  controller.authorize_resource
  menu :label => "Group Document", :parent => "Rekap Dokumen"
  
  form :partial => "form"
  
  index do
    column :name, :sortable => :name do |document_group|
      link_to document_group.name, admin_document_group_path(document_group)
    end
    column "Status" do |document_group|
      status_tag document_group.status, document_group.status_tag
    end

    default_actions
  end
  
  show do
    render "documents"
  end
end
