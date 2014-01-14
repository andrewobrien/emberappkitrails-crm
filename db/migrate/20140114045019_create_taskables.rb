class CreateTaskables < ActiveRecord::Migration
  def change
    create_table :taskables do |t|

      t.timestamps
    end
  end
end
