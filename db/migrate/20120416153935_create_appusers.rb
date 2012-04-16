class CreateAppusers < ActiveRecord::Migration
  def change
    create_table :appusers do |t|
      t.references :employee
      t.string :hashed_password

      t.timestamps
    end
  end
end
