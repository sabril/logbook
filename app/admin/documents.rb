ActiveAdmin.register Document do
  controller.authorize_resource
  menu :label => "Document", :parent => "Rekap Dokumen"
  
  form :partial => "form"
end
