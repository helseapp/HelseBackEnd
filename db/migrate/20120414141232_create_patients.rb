class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.references :workplace
      
      
      t.string :firstname, :null => false
      t.string :lastname, :null => false
      t.date :birthdate, :null => false
      t.string :address, :null => false
      t.string :postnumber, :null => false
      t.string :postplace
      t.string :lat
      t.string :lng
      t.string :marital_status 
      t.string :email
      t.string :telephone
      t.string :mobilephone
      t.integer :average_visit_time
      t.boolean :woman, :null => false
      
      

      t.timestamps
    end
  end
end
