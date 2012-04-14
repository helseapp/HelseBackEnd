class CreatePatientNotes < ActiveRecord::Migration
  def change
    create_table :patient_notes do |t|

      t.timestamps
    end
  end
end
