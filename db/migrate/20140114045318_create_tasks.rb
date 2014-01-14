class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :subject
      t.references :taskable, polymorphic: true

      t.timestamps
    end
  end
end
