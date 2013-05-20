ActiveAdmin.register About do
  index do
    selectable_column
    column :text



    default_actions
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "" do
      f.input :text, as: :wysihtml5, commands: [ :bold, :italic, :underline, :ul, :ol, :outdent, :indent, :link, :image, :source]


    end
    f.actions
  end
  
end
