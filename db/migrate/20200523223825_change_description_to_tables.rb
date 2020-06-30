class ChangeDescriptionToTables < ActiveRecord::Migration[5.2]
  def change
    change_column_null :comments, :content, false, 0
    change_column_null :events, :title, false, 0
    change_column_null :events, :content, false, 0
    change_column_null :events, :outline, false, 0
    change_column_null :events, :address, false, 0
    change_column_null :events, :icon, false, 0
    change_column_null :events, :day_time_at, false
    change_column_null :events, :participant_number, false,0
    change_column_null :experiences, :title, false, 0
    change_column_null :experiences, :content, false, 0
    change_column_null :experiences, :outline, false, 0
    change_column_null :experiences, :procedure, false, 0
    change_column_null :experiences, :icon, false, 0
    change_column_null :maps, :name, false, 0
    change_column_null :maps, :content, false, 0
    change_column_null :maps, :horror_level, false, 0
    change_column_null :maps, :address, false, 0
    change_column_null :maps, :icon, false, 0
    change_column_null :movies, :title, false, 0
    change_column_null :movies, :content, false, 0
    change_column_null :movies, :icon, false, 0
    change_column_null :users, :sex, false, 0
    change_column_null :users, :name, false, 0
    change_column_null :users, :address, false, 0
    change_column_null :users, :icon, default:"0"
    change_column_null :users, :mobile_number, false, 0
    change_column_null :users, :introduction, default: "こんにちは"
  end
end
