class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :lastname
      t.string :city
      t.string :state
      t.string :email
      t.belongs_to :company

      t.timestamps
    end
  end
end
