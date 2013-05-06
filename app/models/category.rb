class Category < ActiveRecord::Base
  attr_accessible :description, :name, :category_image
  has_many :items

  has_attached_file :category_image,
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename",
                    :styles => { :lager => "600x600>", :medium => "300x300>", :thumb => "100x100>" }
end
