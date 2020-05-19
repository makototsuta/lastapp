class AddColumsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :icon, :text
    add_column :users, :birthed_at, :date
    add_column :users, :sex, :string
    add_column :users, :address, :string
    add_column :users, :mobile_number, :string
    add_column :users, :introduction, :string
  end
end
