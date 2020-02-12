class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :location
      t.integer :distance
      t.integer :elevation
      t.string :difficulty

      t.timestamps
    end
  end
end
