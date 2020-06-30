class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :content
      t.string :address
      t.text :icon
      t.integer :organizer_id
      t.date :day_time_at
      t.integer :participant_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
