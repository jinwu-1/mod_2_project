class CreateHikes < ActiveRecord::Migration[6.0]
  def change
    create_table :hikes do |t|
      t.string :name
      t.float :distance
      t.float :elevation
      t.string :difficulty

      t.timestamps
    end
  end
end
