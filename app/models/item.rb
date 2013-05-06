class Item < ActiveRecord::Base
  attr_accessible :category_id, :description, :name, :image
  belongs_to :category

  has_attached_file :image,
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "/system/:attachment/:id/:style/:filename",
                    :styles => { :lager => "600x600>", :medium => "300x300>", :thumb => "100x100>" }
end
