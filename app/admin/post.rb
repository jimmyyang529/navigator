ActiveAdmin.register Post do

  permit_params :title, :body, :image

  show do |t|
    attributes_table do
      row :title
      row :body
    end
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :body
    end
    f.actions
  end






end
