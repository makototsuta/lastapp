class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.string :name
      t.string :address
      t.string :content
      t.string :horror_level
      t.text :icon

      t.timestamps
    end
  end
end
