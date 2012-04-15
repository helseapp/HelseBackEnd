class CreateWorkplaces < ActiveRecord::Migration
  def change
    create_table :workplaces do |t|
      t.string :name
      t.string :address
      t.string :postnumber
      t.string :postplace
      t.string :telephone
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
