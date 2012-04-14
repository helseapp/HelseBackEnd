class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.references :workplace
      t.string :firstname, :null => false
      t.string :lastname, :null => false
      t.date :birthdate, :null => false
      t.string :address, :null => false
      t.string :postnumber, :null => false
      t.string :postplace
      t.string :email, :null => false
      t.string :mobilephone, :null => false
      t.string :telephone
      t.boolean :woman, :null => false
      
      t.string :hashed_password
      t.string :salt
      
      
      

      t.timestamps
    end
  end
end
