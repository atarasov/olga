ActiveAdmin.register Item do

  index do
    column :name
    column :category
    column :description
    column :created_at
    column :updated_at

    default_actions
  end

  filter :name
  filter :category
  filter :created_at

  form do |f|
    f.inputs "Category" do
      f.input :name
      f.input :description
      f.input :category
    end
    f.actions
  end
  
end
