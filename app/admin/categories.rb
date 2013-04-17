ActiveAdmin.register Category do

  index do
    column :name
    column :description
    column :created_at
    column :updated_at

    default_actions
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs "Category" do
      f.input :name
      f.input :description
    end
    f.actions
  end

end
