class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :task_template
      t.references :visit
      t.boolean :completed


      t.timestamps
    end
  end
end
