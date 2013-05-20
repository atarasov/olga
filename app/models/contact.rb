class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :fax, :phone
end
