class CreateAppusers < ActiveRecord::Migration

  def change
    drop_table :appusers 
    create_table :appusers do |t|
      t.references :employee
      
      t.string :mobilephone
      t.string :hashed_password

      t.timestamps
    end
  end
end
