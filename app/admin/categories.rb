ActiveAdmin.register Category do

  index do
    selectable_column
    column :name
    column :category_image do |category|
      image_tag(category.category_image.url(:thumb), :height => '100')
    end

    column :description do |category|
      truncate(category.description, :length => 200, :omission => '...')
    end

    column :created_at  do |category|
      Russian::strftime(category.created_at, "%d %B %Y")
    end
    column :updated_at  do |category|
      Russian::strftime(category.updated_at, "%d %B %Y")
    end

    default_actions
  end

  filter :name
  filter :created_at

  form do |f|
    f.inputs "Category" do
      f.input :name
      f.input :category_image, :as => :file, :hint => f.template.image_tag(f.object.category_image.url(:medium))
      f.input :description, as: :wysihtml5, blocks: [ :bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :source]
    end
    f.actions
  end

end
