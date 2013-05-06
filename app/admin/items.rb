ActiveAdmin.register Item do

  index do
    selectable_column
    column :name
    column :category
    column :image do |item|
      image_tag(item.image.url(:thumb), :height => '100')
    end
    column :description do |item|
      truncate(item.description, :length => 300, :omission => '...')
    end
    column :created_at  do |item|
      Russian::strftime(item.created_at, "%d %B %Y")
    end
    column :updated_at  do |item|
      Russian::strftime(item.updated_at, "%d %B %Y")
    end

    default_actions
  end

  filter :name
  filter :category
  filter :created_at

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Category" do
      f.input :name
      f.input :description
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:medium))
      f.input :category
    end
    f.actions
  end
  
end
