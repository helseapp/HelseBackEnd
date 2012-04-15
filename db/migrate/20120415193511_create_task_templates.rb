class CreateTaskTemplates < ActiveRecord::Migration
  def change
    create_table :task_templates do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
