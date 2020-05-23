class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.references :experience, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
