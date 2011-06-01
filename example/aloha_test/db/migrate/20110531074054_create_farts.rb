class CreateFarts < ActiveRecord::Migration
  def change
    create_table :farts do |t|
      t.string :name
      t.text :cool

      t.timestamps
    end
  end
end
