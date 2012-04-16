class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.references :employee
      
      t.time :date_sent
      t.string :text
      t.boolean :high_priority
      t.boolean :read
      
      t.timestamps
    end
  end
end
