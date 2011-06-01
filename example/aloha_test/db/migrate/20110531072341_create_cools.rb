class CreateCools < ActiveRecord::Migration
  def change
    create_table :cools do |t|
      t.string :name

      t.timestamps
    end
  end
end
