class CreateWatches < ActiveRecord::Migration[5.2]
  def change
    create_table :watches do |t|
      t.references :experience, foreign_key: true
      t.string :ip
      t.timestamps
    end
  end
end
