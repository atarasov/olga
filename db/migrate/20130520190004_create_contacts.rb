class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :email
      t.text :address
      t.string :fax

      t.timestamps
    end
  end
end
