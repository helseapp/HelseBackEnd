class CreateAppusers < ActiveRecord::Migration

  def change
    create_table :appusers do |t|    
      t.references :employee
      t.boolean :is_admin, :default => false
      
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
  end
end
