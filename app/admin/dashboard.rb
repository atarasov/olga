ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do


    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
       column do
         panel "Категории" do
           ul do
             Category.limit(5).map do |category|
               li link_to(category.name + " ("+ category.items.count.to_s + ")", admin_category_path(category))
             end
           end
         end
       end

       column do
         panel "Товары" do
           ul do
             Item.limit(5).map do |item|
               li link_to(item.name, admin_item_path(item))
             end
           end
         end
       end
    end
  end # content
end