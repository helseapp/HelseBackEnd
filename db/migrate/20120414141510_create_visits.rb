class CreateVisits < ActiveRecord::Migration
  def change
    create_table :visits do |t|
      t.references :patient
      t.references :employee
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
