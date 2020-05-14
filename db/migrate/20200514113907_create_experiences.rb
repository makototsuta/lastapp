class CreateExperiences < ActiveRecord::Migration[5.2]
  def change
    create_table :experiences do |t|
      t.string :title
      t.string :outline
      t.string :procedure
      t.string :danger_level
      t.text :icon
      t.string :content
      t.integer :number_of_incident

      t.timestamps
    end
  end
end
