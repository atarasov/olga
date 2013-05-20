ActiveAdmin.register Contact do

  index do
    selectable_column
    column :phone
    column :fax
    column :email
    column :address


    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "" do
      f.input :phone
      f.input :fax
      f.input :email
      f.input :address

    end
    f.actions
  end
  
end
