class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :subject
      t.belongs_to(:taskable, polymorphic: true)

      t.timestamps
    end
  end
end
