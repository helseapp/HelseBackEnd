class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :employee, :patient
      t.string :text
      

      t.timestamps
    end
  end
end
